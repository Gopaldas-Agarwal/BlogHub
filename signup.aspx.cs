using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace BlogHub
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("userhome.aspx");
            }

        }

        protected void register(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    try
                    {
                        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=Bloghub;");
                        con.Open();
                        String query = "insert into users(name,email,password) values('" + this.name.Text + "', '" + this.email.Text + "','" + this.password.Text + "');";
                        MySqlCommand cmd = new MySqlCommand(query, con);
                        MySqlDataReader dr;
                        dr = cmd.ExecuteReader();
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