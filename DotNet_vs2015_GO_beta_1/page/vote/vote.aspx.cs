using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1.page.vote
{
    public partial class vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          string id = TextBox1.Text;
            //string team = DropDownList1.SelectedValue;
            string team = RadioButtonList1.SelectedValue.ToString(); 
            if (global.FindVoteId(id) == 0)
            { Response.Write("<script>alert('请输入正确的序列号');</script>"); }
            else if (global.IfHadVote(id) == 1)
            {
                Response.Write("<script>alert('您已投过票');</script>");
                //Response.Write("<script type='text/javascript'>alert('您已投过票！即将跳转');setTimeout(function(){location.href='http://118.89.38.11/page/vote/showvote.aspx'},2000);</script>");
               // Response.Redirect("http://118.89.38.11/page/vote/showvote.aspx", false);
            }
            else 
            { if (global.Vote(id, team) == -1) { Response.Write("<script>alert('请再试一次');</script>"); }
              else {
                    Response.Write("<script>alert('投票成功！');</script>");
                    //Response.Write("<script type='text/javascript'>alert('投票成功！即将跳转');setTimeout(function(){location.href='http://118.89.38.11/page/vote/showvote.aspx'},2000);</script>");
                }

            }

        }
    }
}