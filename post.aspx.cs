using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BlogHub
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String id= Request.QueryString["id"].ToString();
            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=Bloghub;");
            con.Open();
            String query = "select * from blogposts where id="+id+";";

            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                postTitle.InnerHtml = (String)dr["postTitle"];
                DateTime dt = (DateTime)dr["date"];
                postTime.InnerHtml = dt.ToString();
                postData.InnerHtml = (String)dr["post"];
            }
            
        }
    }
}