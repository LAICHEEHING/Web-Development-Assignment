using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterDesign
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rptSubForumsList.DataBind();
        }
        protected void RptSubForumsList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void RptSubForumsList_ItemDataBound(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void Btn_Topic(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Session["TopicID"] = (item.FindControl("topicID") as Label).Text;
            Response.Redirect("Topic.aspx");
        }

        protected void Btncomment_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            //Counting total comment
            SqlCommand checkcomment = new SqlCommand("SELECT COUNT(*) FROM Comment", connection);
            int countcomment = Convert.ToInt32(checkcomment.ExecuteScalar());
            SqlCommand totalcomment = new SqlCommand("SELECT Total_Reply FROM Topic WHERE FT_ID =" + "'" + (string)Session["TopicID"] + "'" , connection);
            int totalreply = Convert.ToInt32(totalcomment.ExecuteScalar());

            if (Txtcomment !=null || Txtcomment.Text.Trim() !="") {
                totalreply++;
                SqlCommand Addcomment = new SqlCommand("insert into Comment values('" + (countcomment++) + "','" + (string)Session["TopicID"] + "','" + 
                    (string)Session["Username"] + "','" + DateTime.Today + "','" + Txtcomment.Text + "')", connection);
                SqlCommand addreply = new SqlCommand("UPDATE Topic SET Total_Reply="+ totalreply + "WHERE FT_ID ="+ (string)Session["TopicID"] , connection);
                addreply.ExecuteScalar();
                Addcomment.ExecuteScalar();
                Response.Redirect("Topic.aspx");
            }
        }


    }
}