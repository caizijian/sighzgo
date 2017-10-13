using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1.page.vote
{
    public partial class show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 team1 = global.VoteInfo(1);
            Label1.Text = team1+"";
            string HEIGHT1 = team1 *3 + "px";
            bar1.Style["height"] = HEIGHT1;     //高度设为动态

            Int64 team2 = global.VoteInfo(2);
            Label2.Text = team2 + "";
            string HEIGHT2 = team2 * 3 + "px";
            bar2.Style["height"] = HEIGHT2;　　　　　//高度设为动态

            Int64 team3 = global.VoteInfo(3);
            Label3.Text = team3 + "";
            string HEIGHT3 = team3 * 3 + "px";
            bar3.Style["height"] = HEIGHT3;　　　　　//高度设为动态

            Int64 team4 = global.VoteInfo(4);
            Label4.Text = team4 + "";
            string HEIGHT4 = team4 * 3 + "px";
            bar4.Style["height"] = HEIGHT4;　　　　　//高度设为动态

            Int64 team5 = global.VoteInfo(5);
            Label5.Text = team5 + "";
            string HEIGHT5 = team5 * 3 + "px";
            bar5.Style["height"] = HEIGHT5;　　　　　//高度设为动态

            Int64 team6 = global.VoteInfo(6);
            Label6.Text = team6 + "";
            string HEIGHT6 = team6 * 3 + "px";
            bar6.Style["height"] = HEIGHT6;　　　　　//高度设为动态

            Int64 team7 = global.VoteInfo(6);
            Label7.Text = team7 + "";
            string HEIGHT7 = team7 * 3 + "px";
            bar7.Style["height"] = HEIGHT7;　　　　　//高度设为动态

            Int64 team8 = global.VoteInfo(6);
            Label8.Text = team8 + "";
            string HEIGHT8 = team8 * 3 + "px";
            bar8.Style["height"] = HEIGHT8;　　　　　//高度设为动态

        }
    }
}