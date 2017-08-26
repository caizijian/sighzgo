using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services;

namespace DotNet_vs2015_GO_beta_1.system
{
    /// <summary>
    /// EamilService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
   // [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
     [System.Web.Script.Services.ScriptService]
    public class EamilService : System.Web.Services.WebService
    {
        
        public EamilService()
        {
            //return "Hello World";
        }

        [WebMethod]
        public void SendMailMsg(string sendfrom, string sendfrompwd, string sendto, string subject, string body, string smtpserver, int smtpport)
        {
            MailMessage SendMsg = new MailMessage(sendfrom, sendto);
            SendMsg.Subject = subject;
            SendMsg.Body = body;
            SmtpClient client = new SmtpClient(smtpserver, smtpport);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(sendfrom, sendfrompwd);
            client.Send(SendMsg);
        }
    }
    
}
