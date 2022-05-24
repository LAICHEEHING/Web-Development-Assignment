using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MasterDesign
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RptSubForumsList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Session["TopicID"] = (e.Item.FindControl("Label2") as Label).Text;
        }

        protected void Btn_Search(object source, EventArgs e)
        {

            if (txtsearch.Text != "")
            {
                Session["Search"] = txtsearch.Text;
                Response.Redirect("SearchTopic.aspx");
            }
        }
        protected void RepterDetails_ItemCommand(object sender, RepeaterCommandEventArgs e)
        {

        }
        protected void Btn_Topic(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Session["TopicID"] = (item.FindControl("topicID") as Label).Text;
            Response.Redirect("Topic.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Btncreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTopic.aspx");
        }
    }
}
    
