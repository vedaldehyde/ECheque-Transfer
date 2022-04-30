using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoProject
{
    public partial class Order : System.Web.UI.Page
    {
        string uid;
        private int RandomNumber(int min, int max)
        {
            Random rn = new Random();
            return rn.Next(min, max);
        }
        private string RandomString(int length)
        {
            StringBuilder sb = new StringBuilder();
            Random rd = new Random();
            char value;
            for (int i = 0; i < length; i++)
            {
                value = Convert.ToChar(Convert.ToInt64(Math.Floor(26 * rd.NextDouble() + 65)));
                sb.Append(value);
            }
            return sb.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["USERNAME"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(RandomNumber(10, 199));
            sb.Append(RandomString(5));
            uid = sb.ToString();

            string destaddr = "91" + ph.Text;
            string msg = "Hello your Transaction ID is " + uid + " (Sent by VKS Bank)";
            string message1 = HttpUtility.UrlEncode(msg);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                        {
                            {"apikey","bD2uNKoWWjg-q6yZr5aI5No3A8ypqGxYMk9kykkK6v" },
                            {"numbers",destaddr},
                            {"message",message1 },
                            {"sender","TXTLCL" }
                        });
                string result = System.Text.Encoding.UTF8.GetString(response);

            }
            string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string q = "insert into UserStatus(CType,accno,TransID,pass,Vdate,Vmonth,Vyear,status)values('" + "Order" + "','" + Txtacc.Text + "','" + uid + "','" + "Nil" + "','" + "" + "','" + "" + "','" + "" + "','" + "Not Verified" + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}