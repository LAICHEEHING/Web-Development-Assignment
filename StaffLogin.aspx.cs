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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            SqlCommand checkuser = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE Username= '" + TxtUsername.Text + "'" +
                "AND Password ='" + TxtPassword.Text + "'", connection);
            int count = Convert.ToInt32(checkuser.ExecuteScalar());

            if (count > 0)
            {
                SqlCommand usertype = new SqlCommand("SELECT * FROM Admin WHERE Username = '" + TxtUsername.Text + "'", connection);
                SqlDataReader read = usertype.ExecuteReader();
                while (read.Read())
                {
                        Session["ID"] = read["A_ID"].ToString();
                        Response.Redirect("ViewTopicPage.aspx");
                        break;
                    }
            }
            else
                TxtInvalid.Visible = true;
            connection.Close();
        }
    }
}