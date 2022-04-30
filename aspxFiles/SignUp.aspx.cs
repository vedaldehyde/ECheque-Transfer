using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace DemoProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                lblinfo.Visible = false;
            }
        }
        private int RandomNumber(int min,int max)
        {
            Random rn = new Random();
            return rn.Next(min,max);
        }
        private string RandomString(int length)
        {
            StringBuilder sb = new StringBuilder();
            Random rd = new Random();
            char value;
            for (int i=0;i<length;i++)
            {
                value = Convert.ToChar(Convert.ToInt64(Math.Floor(26 * rd.NextDouble() + 65)));
                sb.Append(value);
            }
            return sb.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(RandomNumber(10,199));
            sb.Append(RandomString(7));
            string uid= sb.ToString();            
            if (fname.Text != "" && lname.Text != "" && accno.Text != "" && bal.Text != "" && email.Text != "" && pwd.Text != "" && confpwd.Text != "" && DCountry.SelectedItem.Text != "" && DState.SelectedItem.Text != "" && DGender.SelectedItem.Text != "" && txtphone.Text != "")
            {
                if (pwd.Text == confpwd.Text)
                {
                    string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                    SqlConnection con = new SqlConnection(cs);
                    int count = 0;
                    con.Open();
                    string q = "select accno,username,email from Users";
                    SqlCommand c = new SqlCommand(q, con);
                    SqlDataReader reader = c.ExecuteReader();

                    while (reader.Read())
                    {
                        if (reader["accno"].ToString() == accno.Text || reader["email"].ToString() == email.Text)
                        {
                            lblinfo.Visible = true;
                            lblinfo.Text = "User exists";
                            count++;
                        }
                    }
                    string destaddr = "91" + txtphone.Text;
                    string msg = "Hello your Username is " + uid + " (Sent by VKS Bank)";
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
                    if (count == 0)
                    {
                        con.Close();
                        con.Open();
                        string querry = "insert into Users(fname,lname,accno,bal,username,email,pass,country,state,gender,phone)values('" + fname.Text + "','" + lname.Text + "','" + accno.Text + "','" + bal.Text + "','" + uid + "','" + email.Text + "','" + pwd.Text + "','" + DCountry.SelectedItem.Text + "','" + DState.SelectedItem.Text + "','" + DGender.SelectedItem.Text + "','" + txtphone.Text + "')";
                        SqlCommand cmd = new SqlCommand(querry, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("~/SignupSuccess.aspx");
                    }
                    count = 0;
                    con.Close();
                    con.Close();
                }
               
                
            }
            
            
        }
    }
}