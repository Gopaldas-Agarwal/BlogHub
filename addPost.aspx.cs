using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BlogHub
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }

        }
        /*
        protected void updateCount(object sender, EventArgs e)
        {
            int length = postData.Text.Length;
            lblpostLength.Text = ",khssb;kjb";
            Response.Write("mylength:" + length);
        }
        protected void checkLength(object sender, ServerValidateEventArgs e)
        {
            int length = postData.Text.Length;

            if (length >= 200)
                e.IsValid = true;
            else
                e.IsValid = false;
        }
        */
        protected void savePost(object sender, EventArgs e)
        {
           
            lblresult.Text = "HELLO HELLO HELLO";

            if (IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    try
                    {
                        DateTime date= DateTime.Today;
                        DateTime date1 = DateTime.Parse(date.ToString());
                        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=Bloghub;");
                        con.Open();
                        String query = "insert into blogposts(email,postTitle,post) values('" + Session["useremail"] + "', '" + this.postTitle.Text + "','" + this.postData.Text + "');";
                        MySqlCommand cmd = new MySqlCommand(query, con);
                        MySqlDataReader dr;
                        dr = cmd.ExecuteReader();
                        lblresult.Text = "Post Saved";
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex);
                    }
                }
                else
                {
                    lblresult.Text = "ERROR!!!POST NOT SAVED";
                }

            }


        }
    }
}   