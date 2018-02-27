using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BlogHub
{
    public partial class userhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }


            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=Bloghub;");
            con.Open();
            String query = "select * from blogposts where email='" + Session["useremail"] + "' order by date desc;";
            
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataReader dr = cmd.ExecuteReader();
            int i=0;
            int j = 0;
            String temp;
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    String postTitle = (String)dr["postTitle"];
                    String postData = (String)dr["post"];
                    int postId = (Int32)dr["id"];
                    
                    /*
                    if(i%3==0 && i!=0)
                    {
                        
                        outerPostDiv.InnerHtml = outerPostDiv.InnerText + "<div class='nner flex flex - 3' id='postDiv' runat='server'>"+postDiv.InnerText+"</div>";
                        postDiv.InnerHtml = "";
                    }
                    */
                    postDiv.InnerHtml = postDiv.InnerHtml+ "<div class='flex-item box'> <div class='image fit'><img src='images/pic02.jpg' alt='' /></div> <div class='content'><a  href=post.aspx?id="+postId+" ><h3>" + postTitle + "</h3></a></div></div>" ;

                    ++i;
                    if (i % 3 == 0 && i != 0)
                    {
                        temp = postDiv.InnerHtml;
                        postDiv.InnerHtml = "";
                        outerPostDiv.InnerHtml = outerPostDiv.InnerHtml+ "<div class='inner flex flex - 3' runat='server'>" + temp + "</div>" ;
                        //outerPostDiv.InnerHtml = outerPostDiv.InnerText + "<div class='inner flex flex - 3' runat='server'>" + temp + "</div>";

                    }

                    //Response.Write("Post Title : " + postTitle + "  Post data: " + postData);
                }

                temp = postDiv.InnerHtml;
                postDiv.InnerHtml = "";
                outerPostDiv.InnerHtml = outerPostDiv.InnerHtml + "<div class='inner flex flex - 3' runat='server'>" + temp + "</div>";
            }

        }
    }
}