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
    
    public partial class principal : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-5I21S9R\SQLEXPRESS; Initial Catalog=tution_management;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
            gridbind2();
        }

        protected void btnStudSave_Click(object sender, EventArgs e)
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("insert into studenttab values('" + txtStudname.Text + "','" + txtAddress.Text + "','" + txtstdclass.Text + "','" + DropDownList1.SelectedItem.Text + "')", con1);
            int a = cmd.ExecuteNonQuery();
            if (a == 1)
            {
                Label1.Visible = true;
            }
            con1.Close();
            cleardatd();
            gridbind();
            
        }
        public void cleardatd()
        {
            txtStudname.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtstdclass.Text = string.Empty;
            DropDownList1.SelectedItem.Text = string.Empty;
        }

        protected void btnTeacherSave_Click(object sender, EventArgs e)
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("insert into teachertab values('" + txtThrName.Text + "','" + txtThrAddress.Text + "','" + txtContact.Text + "','" + txtClass.Text + "')", con1);
            int b = cmd.ExecuteNonQuery();
            if (b == 1)
            {
                Label2.Visible = true;
            }
            con1.Close();
            cleardata1();
            gridbind2();
        }
        public void cleardata1()
        {
            txtThrName.Text = string.Empty;
            txtThrAddress.Text = string.Empty;
            txtContact.Text = string.Empty;
            txtClass.Text = string.Empty;
        }
        public void gridbind()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("select * from studenttab", con1);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adt.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con1.Close();
        }
        public void gridbind2()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("select * from teachertab", con1);
            SqlDataAdapter adt1 = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adt1.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con1.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit.aspx");
        }

        protected void btnlogout(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }


        protected void dashbord(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void btn(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}