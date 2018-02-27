using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace BlogHub
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    //Login
                }
                else
                {
                    //error
                }
            }

        }

        protected void login(object sender, EventArgs e)
        {
            result.Text = "HELLOOOOOOOOOOOOOOOOOOOOOOo";
            if (IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    try
                    {
                        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=Bloghub;");
                        con.Open();
                        String query = "select * from users where email='"+this.email.Text+"' and password='"+this.password.Text+"'";
                        MySqlCommand cmd = new MySqlCommand(query, con);
                        MySqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                Session["username"] = (dr["name"].ToString());
                                Session["useremail"] = this.email.Text;
                            }
                            
                            
                            Response.Redirect("userhome.aspx");
                            //login success
                        }
                        else
                        {
                            result.Text = "INVALID LOGIN DETAILS!!!LOGIN FAILED!!PLEASE TRY AGAIN";
                            //login failed
                            //Response.Redirect("login.aspx");
                        }
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                    }
                }
                else
                {

                    //error
                }

            }
        }

    }
}