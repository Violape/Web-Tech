using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clock.Exp6_OptionConnection
{
    public partial class OptionConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Infospace.Text = "";
        }
        protected void Showitem(object sender, EventArgs e)
        {
            this.Infospace.Text = "选择的是" + this.province.Text + "，" + this.city.Text + "，" + this.county.Text;
        }
    }
}