using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNet_vs2015_GO_beta_1
{
    public partial class 插入数据 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string getStr(bool b, int n)//b：是否有复杂字符，n：生成的字符串长度

        {

            string str = "23456789abcdefghijkmnpqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ";
            if (b == true)
            {
                str += "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";//复杂字符
            }
            StringBuilder SB = new StringBuilder();
            Random rd = new Random();
            for (int i = 0; i < n; i++)
            {
                SB.Append(str.Substring(rd.Next(0, str.Length), 1));
            }
            return SB.ToString();

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            con.Open();//开启连接
            int i = 0;
            string id = "abcd";
            while (i<500)
            { 
            id = getStr(false, 4);
            string strcmd = "select id from vote where id='" + id + "'";// + username.Text + "'and password='" + password.Text + "' ";
            MySqlCommand cmd = new MySqlCommand(strcmd, con);
            MySqlDataAdapter ada = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds, "gg");//查询结果填充数据集    

            //判断是否 dataset为空，dataset不为空但不存在表，dataset不为空存在表且表的行数不为0
            //返回对应值，1为成功，0为失败
            //CZJ 392067117@qq.com 2017/08/22 
            if (ds == null || ds.Tables.Count == 0 || (ds.Tables.Count == 1 && ds.Tables[0].Rows.Count == 0))
            {
                string strcmd1 = "insert into vote (id) VALUES ('" + id + "')";
                MySqlCommand cmd1 = new MySqlCommand(strcmd1, con);
                cmd1.ExecuteNonQuery();
                
            }
                i++;
            }
        }
    }
}