using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DemoProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Response.Cookies["Uname"] != null && Response.Cookies["PWD"] != null)
                {
                    TextBox1.Text = Request.Cookies["UNAME"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["PWD"].Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select * from Users where username='" + TextBox1.Text + "'and pass='" + TextBox2.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["Uname"].Value = TextBox1.Text;
                    Response.Cookies["PWD"].Value = TextBox2.Text;
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["USERNAME"] = TextBox1.Text;
                Session["PASSWORD"]= TextBox2.Text;
                Response.Redirect("/Services.aspx");

            }
            else
            {
                lblerror.Text = "Invalid Username or Password";
            }
           
        }
    }
}
