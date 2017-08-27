using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1
{
    public partial class addnotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string notice = TextBox1.Text;
            //string competition_id = Session["competition_id"].ToString();
            string competition_id = "233";
            int success = global.AddNotice(competition_id,notice);
            if(success!=-1)Response.Write("<script>alert('通知发布成功')</script>");

        }
    }
}