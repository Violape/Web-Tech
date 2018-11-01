using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clock.Exp5_Gridview
{
    public partial class Gridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            con.Close();
        }
        protected void Searchbyid(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            con.Open();
            //new SqlCommand("SELECT * FROM xsmd WHERE stu_id='20160001'", cn).ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd WHERE stu_id='"+ this.searchbyid.Text + "'" , con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            con.Close();
        }
        protected void Searchbyname(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            con.Open();
            //new SqlCommand("SELECT * FROM xsmd WHERE stu_id='20160001'", cn).ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd WHERE stu_name='" + this.searchbyname.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            con.Close();
        }
        protected void Insert(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            con.Open();
            new SqlCommand("INSERT INTO xsmd VALUES ('" + this.insertname.Text + "', '"+ this.insertid.Text +
                "', '" + this.insertgender.Text + "', '" + this.insertfaculty.Text + "', '" +
                this.insertclass.Text +"')", con).ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            con.Close();
        }
    }
}