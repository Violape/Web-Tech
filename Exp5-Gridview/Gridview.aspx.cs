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
        //创建页面时对所有条目进行查询
        protected void Page_Load(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //进行查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
        }
        //对所有条目按学号进行查询
        protected void Searchbyid(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //进行条件查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd WHERE stu_id='"+ this.searchbyid.Text + "' ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
        }
        //对所有条目按姓名进行查询
        protected void Searchbyname(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //进行条件查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd WHERE stu_name='" + this.searchbyname.Text + "' ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
        }
        //插入条目
        protected void Insert(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //新建指令，执行插入操作
            new SqlCommand("INSERT INTO xsmd VALUES ('" + this.insertname.Text + "', '"+ this.insertid.Text +
                "', '" + this.insertgender.Text + "', '" + this.insertfaculty.Text + "', '" +
                this.insertclass.Text +"')", con).ExecuteNonQuery();
            //进行条件查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
            //清除表单文字
            this.insertname.Text = "";
            this.insertid.Text = "";
            this.insertgender.Text = "";
            this.insertfaculty.Text = "";
            this.insertclass.Text = "";
            //提示用户操作成功
            this.insertresult.Text = "操作成功！";
        }
        //编辑条目
        protected void Edit(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //新建指令，执行编辑操作
            new SqlCommand("UPDATE xsmd SET stu_name = '" + this.editname.Text + "', stu_gender = '" + this.editgender.Text +
                "', stu_faculty = '" + this.editfaculty.Text + "', stu_class = '" + this.editclass.Text + "' WHERE stu_id = '"
                + this.editid.Text + "'", con).ExecuteNonQuery();
            //进行条件查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
            //清除表单文字
            this.editname.Text = "";
            this.editid.Text = "";
            this.editgender.Text = "";
            this.editfaculty.Text = "";
            this.editclass.Text = "";
            //提示用户操作成功
            this.editresult.Text = "操作成功！";
        }
        //删除条目
        protected void Deletebyid(object sender, EventArgs e)
        {
            //新建连接，采取Windows本地登录
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Studentinfo; Trusted_Connection=yes");
            //打开连接
            con.Open();
            //新建指令，执行删除操作
            new SqlCommand("DELETE FROM xsmd WHERE stu_id = '"+ this.deletebyID.Text + "'", con).ExecuteNonQuery();
            //进行条件查询，查询结果输出
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM xsmd ORDER BY stu_id", con);
            //将查询结果结构化
            DataSet ds = new DataSet();
            da.Fill(ds);
            //将结构化的查询结果绑定到Gridview上
            this.Studentinfo.DataSource = ds.Tables[0];
            this.Studentinfo.DataBind();
            //关闭连接
            con.Close();
            //清除表单文字
            this.deletebyID.Text = "";
            //提示用户操作成功
            this.deleteresult.Text = "操作成功！";
        }
    }
}