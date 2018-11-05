using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Clock.Exp6_OptionConnection
{
    public partial class GetSublist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            //connect to the database server
            SqlConnection con = new SqlConnection("Server=localhost; Initial Catalog=Countydata; Trusted_Connection=yes");
            con.Open();
            //set query string
            string id = Request.QueryString["id"];
            string sql = "SELECT DISTINCT city, cityid FROM Countydata WHERE provinceid = '" + id + "' ORDER BY cityid";
            //handle dataset
            SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            //generate html stream
            foreach (DataRow dataRow in dt.Rows)
            {
                Response.Write("<option value=\""+ dataRow["city"] + "\">" 
                    + dataRow["city"] +"</option>");
            }
            //write into response html
            con.Close();
        }
    }
}