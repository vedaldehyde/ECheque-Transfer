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
    public partial class AdminAuth : System.Web.UI.Page
    {
        string pass;
        string password,transId;
        int amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               
                TextBox5.Visible = false;
                Label2.Visible = false;
                TextBox1.Visible = false;
                TextBox3.Visible = false;
                TextBox3.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;               
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                DropDownList4.Visible = false;
                TextBox4.Visible = false;                               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=DESKTOP-EPIE2BJ\\SQLEXPRESS;Initial Catalog=ChequeTransferDB;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string q = "select pass from UserStatus where TransID='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(q,con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                pass = reader["pass"].ToString();
            }

            if (DropDownList1.SelectedItem.Text == "Self")
            {
                if (TextBox1.Text!="" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
                {
                    using (SqlCommand com = new SqlCommand("select TransID from UserStatus join Users on UserStatus.accno=Users.accno where username='" + TextBox4.Text + "'", con))
                    {
                        con.Close();
                        con.Open();
                        SqlDataReader reader1 = com.ExecuteReader();
                        while (reader1.Read())
                        {
                            transId = reader1["TransID"].ToString();
                        }
                    }
                    if (pass == TextBox2.Text)
                    {
                        con.Close();
                        con.Open();
                        string sql = "update UserStatus set status='" + "Verified" + "',Vdate='" + DropDownList2.SelectedItem.Text + "', Vmonth='" + DropDownList3.SelectedItem.Text + "',Vyear='" + DropDownList4.SelectedItem.Text + "' where TransID='" + TextBox3.Text + "'";
                        using (SqlCommand comd = new SqlCommand(sql,con))
                        {
                            comd.ExecuteNonQuery();
                            
                        }
                        
                        using (SqlCommand com = new SqlCommand("select amtf from Trans join UserStatus on Trans.accno=UserStatus.accno  where TransID='" + TextBox3.Text + "'", con))
                        {
                            con.Close();
                            con.Open();
                            SqlDataReader reader1 = com.ExecuteReader();
                            while (reader1.Read())
                            {
                                amount = Convert.ToInt32(reader1["amtf"]);
                            }
                        }

                        string sqlqu = "update Users set bal=bal-@amount where username='" + TextBox4.Text + "'";
                        using (SqlCommand cm = new SqlCommand(sqlqu,con))
                        {
                            con.Close();
                            con.Open();
                            cm.Parameters.AddWithValue("amount", amount);
                            cm.ExecuteNonQuery();
                        }
                        Label7.Text = "Transaction Successfull !!";
                    }                    
                    else
                    {
                        Label7.ForeColor = System.Drawing.Color.Red;
                        Label7.Text = "Transaction failed !!";
                    }
                   
                }    
            } 
            if(DropDownList1.SelectedItem.Text == "Bearer")
            {                    
                using (SqlCommand com = new SqlCommand("select TransID from UserStatus join Users on UserStatus.accno=Users.accno where username='"+ TextBox4.Text+ "'", con))
                {
                    con.Close();
                    con.Open();
                    SqlDataReader reader1 = com.ExecuteReader();
                    while (reader1.Read())
                    {
                        transId = reader1["TransID"].ToString();
                    }
                }
                if(transId == TextBox3.Text)
                {
                    string sql = "update UserStatus set status='" + "Verified" + "',Vdate='" + DropDownList2.SelectedItem.Text + "', Vmonth='" + DropDownList3.SelectedItem.Text + "',Vyear='" + DropDownList4.SelectedItem.Text + "' where TransID='" + TextBox3.Text + "'";
                    using (SqlCommand comd = new SqlCommand(sql, con))
                    {
                        con.Close();
                        con.Open();
                        comd.ExecuteNonQuery();
                    }
                    using (SqlCommand com = new SqlCommand("select amtf from Trans join UserStatus on Trans.accno=UserStatus.accno  where TransID='" + TextBox3.Text + "'", con))
                    {
                        con.Close();
                        con.Open();
                        SqlDataReader reader1 = com.ExecuteReader();
                        while (reader1.Read())
                        {
                            amount = Convert.ToInt32(reader1["amtf"]);
                        }
                    }
                    string sqlqu = "update Users set bal=bal-@amount where accno='" + TextBox1.Text + "'";
                    using (SqlCommand cm = new SqlCommand(sqlqu, con))
                    {
                        con.Close();
                        con.Open();
                        cm.Parameters.AddWithValue("amount", amount);
                        cm.ExecuteNonQuery();
                    }
                    Label7.Text = "Transaction Successfull !!";
                }
                else
                {
                    Label7.ForeColor = System.Drawing.Color.Red;
                    Label7.Text = "Transaction failed !!";
                }
            }            
            if (DropDownList1.SelectedItem.Text == "Order")
            {
                using (SqlCommand com = new SqlCommand("select password from Trans join UserStatus on Trans.accno=UserStatus.accno  where TransID='" + TextBox3.Text + "'", con))
                {
                    con.Close();
                    con.Open();
                    SqlDataReader reader1 = com.ExecuteReader();
                    while (reader1.Read())
                    {
                        password = reader1["password"].ToString();
                    }
                }
                using (SqlCommand com = new SqlCommand("select TransID from UserStatus join Users on UserStatus.accno=Users.accno where username='" + TextBox4.Text + "'", con))
                {
                    con.Close();
                    con.Open();
                    SqlDataReader reader1 = com.ExecuteReader();
                    while (reader1.Read())
                    {
                        transId = reader1["TransID"].ToString();
                    }
                }
                if (password == TextBox2.Text && transId == TextBox3.Text)
                {
                    con.Close();
                    con.Open();
                    string sql = "update UserStatus set status='" + "Verified" + "',Vdate='" + DropDownList2.SelectedItem.Text + "', Vmonth='" + DropDownList3.SelectedItem.Text + "',Vyear='" + DropDownList4.SelectedItem.Text + "' where TransID='" + TextBox3.Text + "'";
                    using (SqlCommand comd = new SqlCommand(sql, con))
                    {
                        comd.ExecuteNonQuery();

                    }
                    using (SqlCommand com = new SqlCommand("select amtf from Trans join UserStatus on Trans.accno=UserStatus.accno  where TransID='" + TextBox3.Text + "'", con))
                    {
                        con.Close();
                        con.Open();
                        SqlDataReader reader1 = com.ExecuteReader();
                        while (reader1.Read())
                        {
                            amount = Convert.ToInt32(reader1["amtf"]);
                        }
                    }
                    string sqlqu = "update Users set bal=bal-@amount where accno='" + TextBox1.Text + "'";
                    using (SqlCommand cm = new SqlCommand(sqlqu, con))
                    {
                        con.Close();
                        con.Open();
                        cm.Parameters.AddWithValue("amount", amount);
                        cm.ExecuteNonQuery();
                    }
                    con.Close();
                    Label7.Text = "Transaction Successfull !!";
                }
                else
                {
                    Label7.ForeColor = System.Drawing.Color.Red;
                    Label7.Text = "Transaction failed !!";
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "3")
            {
                TextBox2.Visible = false;
                TextBox1.Visible = true;
                TextBox3.Visible = true;
                Button1.Visible = true;                               
                Label2.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;                
                TextBox4.Visible = true;                
                TextBox5.Visible = true;
            }
            if (DropDownList1.SelectedValue == "1")
            {
                TextBox2.Visible = true;
                TextBox1.Visible = true;
                TextBox3.Visible = true;
                Label2.Visible = true;
                Button1.Visible = true;                
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;
                TextBox4.Visible = true;                
            }
            if (DropDownList1.SelectedValue == "2")
            {
                TextBox2.Visible = true;
                TextBox1.Visible = true;
                TextBox3.Visible = true;
                Label2.Visible = true;
                TextBox5.Visible = true;
                Button1.Visible = true;                
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                DropDownList4.Visible = true;
                TextBox4.Visible = true;                
            }

        }
    }
}