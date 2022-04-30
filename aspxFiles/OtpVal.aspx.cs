using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace DemoProject
{
    public partial class OtpVal : System.Web.UI.Page
    {
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
            if (Session["otp"].ToString() == txtotp.Text)
            {

                string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                using (SqlCommand cmd = new SqlCommand("update Users set bal=bal-'" + Convert.ToInt32(Session["amt"]) + "' where username='" + Session["USERNAME"] + "'", con))
                {
                    cmd.ExecuteNonQuery();
                }
                using (SqlCommand cm = new SqlCommand("update Users set bal=bal+'" + Convert.ToInt32(Session["amt"]) + "' where accno='" + Session["acc"] + "'", con))//Amount credited to reciever's acc
                {
                    con.Close();
                    con.Open();
                    cm.ExecuteNonQuery();
                }
                con.Close();
                Response.Redirect("~/CrossSuccess.aspx");

            }
            else
            {
                Response.Write("Invalid otp");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }

        
    }
}