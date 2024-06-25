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
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-5I21S9R\SQLEXPRESS; Initial Catalog=tution_management;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbindcls9();
            gridbindcls10();

            

        }
        public void gridbindcls9()
        {
            SqlCommand cmd = new SqlCommand("select * from studenttab where class='9'and educational_status='excellent'", con1);
            con1.Open();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con1.Close();

            SqlCommand cmd1 = new SqlCommand("select * from studenttab where class='9'and educational_status='average'", con1);
            con1.Open();
            SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            adt1.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();
            con1.Close();

            SqlCommand cmd2 = new SqlCommand("select * from studenttab where class='9'and educational_status='poor'", con1);
            con1.Open();
            SqlDataAdapter adt2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            adt2.Fill(ds2);
            GridView3.DataSource = ds2;
            GridView3.DataBind();
            con1.Close();
        }
        public void gridbindcls10()
        {
            SqlCommand cmd = new SqlCommand("select * from studenttab where class='10'and educational_status='excellent'", con1);
            con1.Open();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adt.Fill(ds);
            GridView4.DataSource = ds;
            GridView4.DataBind();
            con1.Close();

            SqlCommand cmd1 = new SqlCommand("select * from studenttab where class='10'and educational_status='average'", con1);
            con1.Open();
            SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            adt1.Fill(ds1);
            GridView5.DataSource = ds1;
            GridView5.DataBind();
            con1.Close();

            SqlCommand cmd2 = new SqlCommand("select * from studenttab where class='10'and educational_status='poor'", con1);
            con1.Open();
            SqlDataAdapter adt2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            adt2.Fill(ds2);
            GridView6.DataSource = ds2;
            GridView6.DataBind();
            con1.Close();
        }

        protected void btn(object sender, EventArgs e)
        {
            Response.Redirect("principal.aspx");
        }

        protected void btnlogout(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}