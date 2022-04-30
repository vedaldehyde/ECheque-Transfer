using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoProject
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                string user = Session["USERNAME"].ToString();
                string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string que = "select fname from Users where username='" + user + "'";
                SqlCommand c = new SqlCommand(que, con);
                SqlDataReader reader = c.ExecuteReader();
                while (reader.Read())
                {
                    que = reader["fname"].ToString();
                }
                if (user != null)
                {
                    lblname.Text = "Welcome " + que;
                }
                Session["FNAME"] = que;

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
            

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}