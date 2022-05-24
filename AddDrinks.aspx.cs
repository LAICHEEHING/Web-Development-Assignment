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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDrinks_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageDrinks.aspx");
        }

        protected void BtnMembers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMember.aspx");
        }

        protected void BtnTopic_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageTopic.aspx");
        }

        protected void BtnComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageComment.aspx");
        }

        protected void BtnAddDrinks_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDrinks.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            //Counting total Drinks
            SqlCommand checkdrink = new SqlCommand("SELECT COUNT(*) FROM Drinks", connection);
            int countdrink = Convert.ToInt32(checkdrink.ExecuteScalar());

            //images save to file
                FileUpload1.SaveAs(Server.MapPath("TopicImages//" + FileUpload1.FileName));


                //Saving New drink created
                SqlCommand NewTopic = new SqlCommand("insert into Drinks values('" + (countdrink + 1) + "','" + Session["Username"] + "','" + TopicTitle.Text + "','" + Date + "','" +
                "~/TopicImages/" + FileUpload1.FileName + "','" + TopicDescription.Text + "','" + 0 + "')", connection);
                NewTopic.ExecuteScalar();

            Response.Redirect("AddDrinks.aspx");
        }
    }
}