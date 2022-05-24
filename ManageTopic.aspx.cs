using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterDesign
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //prevent user from going back to secured pages
            if (Session["ID"] == null)
            {
                Response.Redirect("SessionExpired.aspx");
            }
        }

        protected void BtnTopic_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTopic.aspx");
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnMembers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMember.aspx");
        }

        protected void BtnDrinks_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageDrinks.aspx");
        }

        protected void BtnComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageComment.aspx");
        }

        protected void BtnAddDrinks_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDrinks.aspx");
        }
    }
}