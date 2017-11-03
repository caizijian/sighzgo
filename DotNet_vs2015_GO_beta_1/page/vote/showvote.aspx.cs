using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1.page
{
    public partial class showvote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 team1 = global.VoteInfo(1);
            piao1.Text = team1 + "";
            string HEIGHT1 = (team1 * 3 + 90 )/7.5 + "%";
            long1.Style["height"] = HEIGHT1;     //高度设为动态
            piao1.Style["bottom"] = team1 * 3 /7.5 +55+ "%";

            Int64 team2 = global.VoteInfo(2);
            piao2.Text = team2 + "";
            string HEIGHT2 = (team2 * 3 + 90) / 7.5 + "%";
            long2.Style["height"] = HEIGHT2;　　　　　//高度设为动态
            piao2.Style["bottom"] = team2 * 3 / 7.5 + 55 + "%";

            Int64 team3 = global.VoteInfo(3);
            piao3.Text = team3 + "";
            string HEIGHT3 = (team3 * 3 + 90) / 7.5 + "%";
            long3.Style["height"] = HEIGHT3;　　　　　//高度设为动态
            piao3.Style["bottom"] = team3 * 3 / 7.5 + 55 + "%";

            Int64 team4 = global.VoteInfo(4);
            piao4.Text = team4 + "";
            string HEIGHT4 = (team4 * 3 + 90) / 7.5 + "%";
            long4.Style["height"] = HEIGHT4;　　　　　//高度设为动态
            piao4.Style["bottom"] = team4 * 3 / 7.5 + 55 + "%";

            Int64 team5 = global.VoteInfo(5);
            piao5.Text = team5 + "";
            string HEIGHT5 = (team5 * 3 + 90) / 7.5 + "%";
            long5.Style["height"] = HEIGHT5;　　　　　//高度设为动态
            piao5.Style["bottom"] = team5 * 3 / 7.5 + 55 + "%";

            Int64 team6 = global.VoteInfo(6);
            piao6.Text = team6 + "";
            string HEIGHT6 = (team6 * 3 + 90) / 7.5 + "%";
            long6.Style["height"] = HEIGHT6;　　　　　//高度设为动态
            piao6.Style["bottom"] = team6 * 3 / 7.5 + 55 + "%";

            Int64 team7 = global.VoteInfo(7);
            piao7.Text = team7 + "";
            string HEIGHT7 = (team7 * 3 + 90) / 7.5 + "%";
            long7.Style["height"] = HEIGHT7;　　　　　//高度设为动态
            piao7.Style["bottom"] = team7 * 3 / 7.5 + 55 + "%";

            Int64 team8 = global.VoteInfo(8);
            piao8.Text = team8 + "";
            string HEIGHT8 = (team8 * 3 + 90) / 7.5 + "%";
            long8.Style["height"] = HEIGHT8;　　　　　//高度设为动态
            piao8.Style["bottom"] = team8 * 3 / 7.5 + 55 + "%";

            Int64 total = global.VotePeopleInfo(0);
            totalpiao.Text = total + "";
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Int64 team1 = global.VoteInfo(1);
            piao1.Text = team1 + "";
            string HEIGHT1 = (team1 * 3 + 90) / 7.5 + "%";
            long1.Style["height"] = HEIGHT1;     //高度设为动态
            piao1.Style["bottom"] = team1 * 3 / 7.5 + 55 + "%";

            Int64 team2 = global.VoteInfo(2);
            piao2.Text = team2 + "";
            string HEIGHT2 = (team2 * 3 + 90) / 7.5 + "%";
            long2.Style["height"] = HEIGHT2;　　　　　//高度设为动态
            piao2.Style["bottom"] = team2 * 3 / 7.5 + 55 + "%";

            Int64 team3 = global.VoteInfo(3);
            piao3.Text = team3 + "";
            string HEIGHT3 = (team3 * 3 + 90) / 7.5 + "%";
            long3.Style["height"] = HEIGHT3;　　　　　//高度设为动态
            piao3.Style["bottom"] = team3 * 3 / 7.5 + 55 + "%";

            Int64 team4 = global.VoteInfo(4);
            piao4.Text = team4 + "";
            string HEIGHT4 = (team4 * 3 + 90) / 7.5 + "%";
            long4.Style["height"] = HEIGHT4;　　　　　//高度设为动态
            piao4.Style["bottom"] = team4 * 3 / 7.5 + 55 + "%";

            Int64 team5 = global.VoteInfo(5);
            piao5.Text = team5 + "";
            string HEIGHT5 = (team5 * 3 + 90) / 7.5 + "%";
            long5.Style["height"] = HEIGHT5;　　　　　//高度设为动态
            piao5.Style["bottom"] = team5 * 3 / 7.5 + 55 + "%";

            Int64 team6 = global.VoteInfo(6);
            piao6.Text = team6 + "";
            string HEIGHT6 = (team6 * 3 + 90) / 7.5 + "%";
            long6.Style["height"] = HEIGHT6;　　　　　//高度设为动态
            piao6.Style["bottom"] = team6 * 3 / 7.5 + 55 + "%";

            Int64 team7 = global.VoteInfo(7);
            piao7.Text = team7 + "";
            string HEIGHT7 = (team7 * 3 + 90) / 7.5 + "%";
            long7.Style["height"] = HEIGHT7;　　　　　//高度设为动态
            piao7.Style["bottom"] = team7 * 3 / 7.5 + 55 + "%";

            Int64 team8 = global.VoteInfo(8);
            piao8.Text = team8 + "";
            string HEIGHT8 = (team8 * 3 + 90) / 7.5 + "%";
            long8.Style["height"] = HEIGHT8;　　　　　//高度设为动态
            piao8.Style["bottom"] = team8 * 3 / 7.5 + 55 + "%";

            Int64 total = global.VotePeopleInfo(0);
            totalpiao.Text = total + "";
        }
    }
}