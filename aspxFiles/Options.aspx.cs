using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoProject
{
    public partial class Options : System.Web.UI.Page
    {
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
            if (Session["USERNAME"] != null)
            {
                StringBuilder sb = new StringBuilder();
                sb.Append(RandomNumber(10, 199));
                sb.Append(RandomString(5));
                string uid = sb.ToString();
                Session["TransId"] = uid;
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