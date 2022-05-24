using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterDesign
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void RptSubForumsList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_Search(object sender, EventArgs e)
        {
            if (txtsearch.Text != "")
            {
                Session["Search"] = txtsearch.Text;
                Response.Redirect("SearchTopic.aspx");
            }
        }
        protected void Btn_Topic(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Session["TopicID"] = (item.FindControl("topicID") as Label).Text;
            Response.Redirect("Topic.aspx");
        }

        protected void Btncreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTopic.aspx");
        }
    }
}
