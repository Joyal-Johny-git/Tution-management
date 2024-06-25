using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-5I21S9R\SQLEXPRESS; Initial Catalog=tution_management;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {             
                motivation();
            }
            
        }
   
        public void motivation()
        {
            
            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                Label1.Text = "Welcome, " + username + "!";
                if (username == "joyal")
                {
                    Label2.Text = "You're doing excellent! Keep up the great work!";
                }
                else if (username == "sonu")
                {
                    Label2.Text = "You're doing good! Keep improving!";
                }
                else if (username == "alan")
                {
                    Label2.Text = "You're doing good! Keep improving!";
                }
                else if (username == "priya")
                {
                    Label2.Text = "You can do better! Work hard and strive for improvement";
                }
            }
        }
        protected void btnlogout(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
