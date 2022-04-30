using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;

namespace DemoProject
{
    public partial class Sender : System.Web.UI.Page
    {
        string q;
        string cs;
        string fname;
        int bal;
        string value;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["USERNAME"] != null)
                {
                    Lblfund.Visible = false;
                    Txtphoneno.Visible = false;
                    Label1.Visible = false;
                    Label2.Visible = false;
                    txtp.Visible = false;
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
                
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/Login.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtaccno.Text != "" && txtamtf.Text != "" && txtname.Text != "" && Ddate.SelectedItem.Text != "" && DMonth.SelectedItem.Text != "" && DYear.SelectedItem.Text != "" && Ctype.SelectedItem.Text != "" && Bank.SelectedItem.Text != "")
            {
                string connstr= "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connstr);
                using (SqlCommand com=new SqlCommand("select bal from Users where username='"+Session["USERNAME"]+"'",connection))
                {
                    connection.Open();
                    SqlDataReader reader = com.ExecuteReader();
                    while (reader.Read())
                    {
                        
                        bal = Convert.ToInt32(reader["bal"]);
                    }
                }
                using (SqlCommand com = new SqlCommand("select fname from Users where username='" + Session["USERNAME"] + "'",connection))
                {
                    connection.Close();
                    connection.Open();
                    SqlDataReader reader = com.ExecuteReader();
                    while (reader.Read())
                    {                       
                        fname= reader["fname"].ToString();
                    }
                }

                if (bal < 2000)
                {
                    Lblfund.Visible = true;
                    Lblfund.Text = "Insufficient Funds !!";
                }
                else
                {
                    if (Ctype.SelectedItem.Text == "Cross")
                    {
                        connection.Close();
                        string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                        connection.Open();
                        string querry = "insert into Trans(accno,amtf,name,pass,Ddate,Dmonth,Dyear,Cheque,Bank)values('" + txtaccno.Text + "','" + txtamtf.Text + "','" + txtname.Text + "','"+"Nil"+"','" + Ddate.SelectedItem.Text + "','" + DMonth.SelectedItem.Text + "','" + DYear.SelectedItem.Text + "','" + Ctype.SelectedItem.Text + "','" + Bank.SelectedItem.Text + "')";
                        SqlCommand cmd = new SqlCommand(querry, connection);
                        cmd.ExecuteNonQuery();
                        using(SqlCommand cd=new SqlCommand("select phone from Users where username='" + Session["Username"] + "'",connection))
                        {
                            connection.Close();
                            connection.Open();
                            SqlDataReader reader = cd.ExecuteReader();
                            while (reader.Read())
                            {
                                q = reader["phone"].ToString();
                            }
                        }
                        Random random = new Random();
                        value = random.Next(10001, 99999).ToString();
                        string destaddr = "91" + q;
                        string msg = "Hello your otp is " + value + " (Sent by VKS Bank)";
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
                        Session["otp"]= value;
                        Session["amt"] = txtamtf.Text;
                        Session["acc"] = txtaccno.Text;
                        Session["name"] = txtname.Text;
                        Session["date"] = Ddate.SelectedItem.Text;
                        Session["month"] = DMonth.SelectedItem.Text;
                        Session["yr"] = DYear.SelectedItem.Text;
                        Session["type"] = Ctype.SelectedItem.Text;
                        Session["bank"] = Bank.SelectedItem.Text;
                        Response.Redirect("~/OtpVal.aspx");
                        connection.Close();
                    }
                    if(Ctype.SelectedItem.Text == "Self")
                    {
                        string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                        SqlConnection con = new SqlConnection(cs);
                        con.Open();
                        string querry = "insert into Trans(accno,amtf,name,pass,Ddate,Dmonth,Dyear,Cheque,Bank)values('" + txtaccno.Text + "','" + txtamtf.Text + "','" + txtname.Text + "','" + "Nil" + "','" + Ddate.SelectedItem.Text + "','" + DMonth.SelectedItem.Text + "','" + DYear.SelectedItem.Text + "','" + Ctype.SelectedItem.Text + "','" + Bank.SelectedItem.Text + "')";
                        SqlCommand cmd = new SqlCommand(querry, con);
                        cmd.ExecuteNonQuery();
                        Session["tele"] = q;
                        Session["amt"] = txtamtf.Text;
                        Session["acc"] = txtaccno.Text;
                        Session["name"] = txtname.Text;
                        Session["date"] = Ddate.SelectedItem.Text;
                        Session["month"] = DMonth.SelectedItem.Text;
                        Session["yr"] = DYear.SelectedItem.Text;
                        Session["type"] = Ctype.SelectedItem.Text;
                        Session["bank"] = Bank.SelectedItem.Text;
                        Response.Redirect("~/Self.aspx");
                    }

                    if (Ctype.SelectedItem.Text == "Bearer")
                    {
                        string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                        SqlConnection con = new SqlConnection(cs);
                        con.Open();
                        string querry = "insert into Trans(accno,amtf,name,pass,Ddate,Dmonth,Dyear,Cheque,Bank)values('" + txtaccno.Text + "','" + txtamtf.Text + "','" + txtname.Text + "','" + "Nil" + "','" + Ddate.SelectedItem.Text + "','" + DMonth.SelectedItem.Text + "','" + DYear.SelectedItem.Text + "','" + Ctype.SelectedItem.Text + "','" + Bank.SelectedItem.Text + "')";
                        SqlCommand cmd = new SqlCommand(querry, con);
                        cmd.ExecuteNonQuery();


                        Session["tele"] = q;
                        Session["phoneno"] = Txtphoneno.Text;
                        Session["amt"] = txtamtf.Text;
                        Session["acc"] = txtaccno.Text;
                        Session["name"] = txtname.Text;
                        Session["date"] = Ddate.SelectedItem.Text;
                        Session["month"] = DMonth.SelectedItem.Text;
                        Session["yr"] = DYear.SelectedItem.Text;
                        Session["type"] = Ctype.SelectedItem.Text;
                        Session["bank"] = Bank.SelectedItem.Text;

                        string destaddr = "91" + Txtphoneno.Text;
                        string msg = "Hello '"+txtname.Text+"', '"+fname+"' has issued a bearer cheque on your name.Kindly withraw your cash from the bank. (Sent by VKS Bank)";
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
                        Response.Redirect("~/BearerSuccess.aspx");
                    }
                    if (Ctype.SelectedItem.Text == "Order")
                    {
                        string cons = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
                        SqlConnection conn = new SqlConnection(cons);
                        using (SqlCommand cm=new SqlCommand("insert into Trans(accno,amtf,name,password,Ddate,Dmonth,Dyear,Cheque,Bank)values('" + txtaccno.Text + "','" + txtamtf.Text + "','" + txtname.Text + "','"+ txtp .Text+ "','" + Ddate.SelectedItem.Text + "','" + DMonth.SelectedItem.Text + "','" + DYear.SelectedItem.Text + "','" + Ctype.SelectedItem.Text + "','" + Bank.SelectedItem.Text + "')",conn))
                        {
                            conn.Close();
                            conn.Open();
                            cm.ExecuteNonQuery();
                        }                       
                        conn.Close();

                        string destaddr = "91" + Txtphoneno.Text;
                        string msg = "Hello '" + txtname.Text + "', '" + fname + "' has issued an order cheque on your name.Kindly withraw your cash from the bank. (Sent by VKS Bank)";
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
                        Session["tele"] = q;
                        Session["phoneno"] = Txtphoneno.Text;
                        Session["amt"] = txtamtf.Text;
                        Session["acc"] = txtaccno.Text;
                        Session["name"] = txtname.Text;
                        Session["date"] = Ddate.SelectedItem.Text;
                        Session["month"] = DMonth.SelectedItem.Text;
                        Session["yr"] = DYear.SelectedItem.Text;
                        Session["type"] = Ctype.SelectedItem.Text;
                        Session["bank"] = Bank.SelectedItem.Text;
                        Response.Redirect("~/OrderSuccess.aspx");
                    }
                }                
            }
        }

        protected void Ctype_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (Ctype.SelectedValue == "4")
            {
                Txtphoneno.Visible = true;
                Label1.Visible = true;
            }
            if (Ctype.SelectedValue == "2")
            {
                Label2.Visible = true;
                txtp.Visible = true;
            }
        }

    }
}