using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoProject
{
    public partial class SelfSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string TransDate;
            if (Session["USERNAME"] != null)
            {
                TransDate= Session["date"].ToString()+"/"+ Session["month"].ToString()+"/"+ Session["yr"].ToString();
                lblacc.Text = Session["acc"].ToString();
                lblname.Text = Session["name"].ToString();
                lblamt.Text = Session["amt"].ToString();
                lbldate.Text=TransDate;
                lblbank.Text = Session["bank"].ToString();
                lbltype.Text = Session["type"].ToString();*/
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