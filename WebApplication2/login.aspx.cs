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

    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-5I21S9R\SQLEXPRESS; Initial Catalog=tution_management;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string role;
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login1 where username='" + txtUsername.Text + "'and password='" + txtPassword.Text + "'", con);
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                role = rdr["role"].ToString();
                if (role == "principal")
                {
                    Response.Redirect("dashboard.aspx");
                }
                else if (role == "student")
                {
                    string n = txtUsername.Text;

                    Session["username"] = n;
                    Response.Redirect("student.aspx");
                }
                else if (role == "teacher")
                {
                    Response.Redirect("teacher.aspx");
                }
            }
            con.Close();
        }
    }
}