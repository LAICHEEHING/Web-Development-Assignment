using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace MasterDesign
{
	public partial class WebForm5 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

        }

        protected void TopicSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            //Counting total Topic 
            SqlCommand checkTopic = new SqlCommand("SELECT COUNT(*) FROM Topic", connection);
            int countTopic = Convert.ToInt32(checkTopic.ExecuteScalar());


            string Date = DateTime.Now.ToString();
            //If images is upload, save to file
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("TopicImages//" + FileUpload1.FileName));


                //Saving New Topic created by Member with Image
                SqlCommand NewTopic = new SqlCommand("insert into Topic values('" + (countTopic+1) + "','" + Session["Username"] + "','" + TopicTitle.Text + "','" + Date + "','" +
                "~/TopicImages/" + FileUpload1.FileName + "','" + TopicDescription.Text + "','" + 0 + "')", connection);
                NewTopic.ExecuteScalar();
            }
            else {
                //Saving New Topic created by Member without Image
                SqlCommand NewTopic = new SqlCommand("insert into Topic values('" + (countTopic + 1) + "','" + Session["Username"] + "','" + TopicTitle.Text + "','"  + Date + "','" +
                null + "','" + TopicDescription.Text + "','" + 0 + "')", connection);
                NewTopic.ExecuteScalar();
            }

            //Redirect to the Topic created
            Response.Redirect("CreateTopic.aspx");
        }

        protected void Btn_Topic(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Session["TopicID"] = (item.FindControl("btnsearch") as Button).Text;
            Response.Redirect("Topic.aspx");
        }
    }
}