using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterDesign
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMembers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMember.aspx");
        }

        protected void BtnDrinks_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDrinks.aspx");
        }

        protected void BtnTopic_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTopicPage.aspx");
        }

        protected void BtnComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewComment.aspx");
        }
    }
}