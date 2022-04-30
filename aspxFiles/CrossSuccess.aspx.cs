using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DemoProject
{
    public partial class CrossSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string TransDate;
                if (Session["USERNAME"]!=null)
                {
                    TransDate= Session["date"].ToString()+"/"+ Session["month"].ToString()+"/"+ Session["yr"].ToString();
                    lblacc.Text = Session["acc"].ToString();
                    lblname.Text = Session["name"].ToString();
                    lblamt.Text = Session["amt"].ToString();
                    lbldate.Text=TransDate;
                    lblbank.Text = Session["bank"].ToString();
                    lbltype.Text = Session["type"].ToString();
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}