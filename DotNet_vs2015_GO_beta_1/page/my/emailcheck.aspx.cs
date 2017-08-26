using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1.system
{
    public partial class emailcheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           EamilService SendMsg = new EamilService();
            SendMsg.SendMailMsg(this.txtSendFrom.Text.Trim(), this.txtSendFromPwd.Text.Trim(), this.txtSendTo.Text.Trim(), this.txtSubject.Text.Trim(), this.txtContent.Text, "smtp.qq.com", 25);
        }
    }
}