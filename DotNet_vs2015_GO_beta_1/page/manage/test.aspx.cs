using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1.system
{
    public partial class test : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "Server=10.10.11.108;User ID=root;Password=GNzhengxun11;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            string strcmd = "select team_id as 团队编号,number as 数量,date as 日期 from works";//"select * from works";//
            con.Open();//开启连接
            MySqlCommand cmd = new MySqlCommand(strcmd, con);
            MySqlDataAdapter ada = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds, "works");//查询结果填充数据集     
            if (ds == null || ds.Tables.Count == 0 || (ds.Tables.Count == 1 && ds.Tables[0].Rows.Count == 0))
            {
                Response.Write("<script>alert('没有数据！')</script>");
            }
            list.DataSource = ds;
            list.DataKeyNames = new string[] { "团队编号" };
            list.DataBind();

        }

    }
}