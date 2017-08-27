using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1
{
    public partial class newnotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int participant_id = 136;
            //int participant_id=Session[["uid"].ToString();
           Int64 num= global.NewNoticeNumber(participant_id);
            Label1.Text = num.ToString();      
        }





    }
}