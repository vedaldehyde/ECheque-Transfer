using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoProject
{
    public partial class OrderSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                lblacc.Text = Session["acc"].ToString();
                lblname.Text = Session["name"].ToString();
                lblamt.Text = Session["amt"].ToString();
                lbldate.Text = Session["date"].ToString();
                lblmonth.Text = Session["month"].ToString();
                lblyr.Text = Session["yr"].ToString();
                lblbank.Text = Session["bank"].ToString();
                lbltype.Text = Session["type"].ToString();
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