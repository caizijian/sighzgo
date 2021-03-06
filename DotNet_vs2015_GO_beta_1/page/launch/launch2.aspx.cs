﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Web.Security;
using System.Text.RegularExpressions;

namespace WebApplication1
{
    public partial class _2 : System.Web.UI.Page
    {
        private void BindProvince()    //绑定省市县的三个下拉菜单
        {
            string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            string strcmd = "select provinceid,province from provinces";
            MySqlDataAdapter myda = new MySqlDataAdapter(strcmd, con);
            DataSet ds = new DataSet();
            con.Open();
            myda.Fill(ds);
            con.Close();
            bind_Province.DataSource = ds.Tables[0];
            bind_Province.DataValueField = "provinceid";
            bind_Province.DataTextField = "province";
            bind_Province.DataBind();
        }

        private void BindCity(string code)
        {
            string sql = "select cityid,city from cities where provinceid='" + code + "'";
            //省份和城市进行关联
            string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            MySqlDataAdapter myda = new MySqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            con.Open();
            myda.Fill(ds);
            con.Close();
            bind_City.DataSource = ds.Tables[0];
            bind_City.DataValueField = "cityid";
            bind_City.DataTextField = "city";
            bind_City.DataBind();
        }
        private void BindArea(string code)
        {
            string sql = "select areaid,area from areas where cityid='" + code + "'";
            //省份和城市进行关联
            string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            MySqlDataAdapter myda = new MySqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            con.Open();
            myda.Fill(ds);
            con.Close();
            Bind_Area.DataSource = ds.Tables[0];
            Bind_Area.DataValueField = "areaid";
            Bind_Area.DataTextField = "area";
            Bind_Area.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("../login.aspx", false);
                return;
            }
            if (!IsPostBack)
            {
                BindProvince();
                BindCity(bind_Province.SelectedItem.Value);
                BindArea(bind_City.SelectedItem.Value);
            }
        }



        protected void btn_upload_Click(object sender, EventArgs e)
        {
            if (pic_upload.HasFile)//验证是否包含文件
            {
                Boolean fileOk = false;
                //取得文件的扩展名,并转换成小写
                string fileExtension = Path.GetExtension(pic_upload.FileName).ToLower();
                //验证上传文件是否图片格式
                fileOk = IsImage(fileExtension);

                if (fileOk)
                {
                    //对上传文件的大小进行检测，限定文件最大不超过8M
                    if (pic_upload.PostedFile.ContentLength < 8192000)
                    {
                        string filepath = "/上传图片/";
                        if (Directory.Exists(Server.MapPath(filepath)) == false)//如果不存在就创建file文件夹
                        {
                            Directory.CreateDirectory(Server.MapPath(filepath));
                        }
                        string virpath = filepath + DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-fffffff") + Session["uid"] + fileExtension;//;//这是存到服务器上的虚拟路径
                        string mappath = Server.MapPath(virpath);//转换成服务器上的物理路径
                        pic_upload.PostedFile.SaveAs(mappath);//保存图片
                                                              //显示图片
                        pic.ImageUrl = virpath;
                        //清空提示
                        lbl_pic.Text = "";
                    }
                    else
                    {
                        pic.ImageUrl = "";
                        lbl_pic.Text = "文件大小超出8M！请重新选择！";
                        return;
                    }
                }
                else
                {
                    pic.ImageUrl = "";
                    lbl_pic.Text = "要上传的文件类型不对！请重新选择！";
                    return;
                }
            }
            else
            {
                pic.ImageUrl = "";
                lbl_pic.Text = "请选择要上传的图片！";
                return;
            }
        }

    
        
        //限制输入数据
        protected bool check(string companyname, string managername, string telephone, string email)
        {
            if (Regex.IsMatch(companyname, @"[^0-9a-zA-Z\u4e00-\u9fa5]"))
            {
                Response.Write("<script>alert('公司名称不符合格式')</script>");
                return false;
            }
            if (Regex.IsMatch(managername, @"[^0-9a-zA-Z\u4e00-\u9fa5]"))
            {
                Response.Write("<script>alert('负责人名称不符合格式')</script>");
                return false;
            }
            if (managername == "")
            {
                Response.Write("<script>alert('负责人不能为空')</script>");
                return false;
            }
            if (companyname == "")
            {
                Response.Write("<script>alert('公司名不能为空')</script>");
                return false;
            }
            if (telephone == "")
            {
                Response.Write("<script>alert('电话号码不能为空')</script>");
                return false;
            }
            if (email == "")
            {
                Response.Write("<script>alert('邮箱不能为空')</script>");
                return false;
            }
            return true;
        }
    
        protected void Button1_Click(object sender, System.EventArgs e)
        {
            if (check(companyname.Text, managername.Text,telephone.Text,email.Text))
            {
                string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
                        MySqlConnection con = new MySqlConnection(str);//实例化链接
                        con.Open();   //开启连接   
                        string strcmd = "update host set companyname=?companyname,managername=?managername,telephone=?telephone,email=?email,wechat=?wechat,province=?province,city=?city,district=?district where id=?id";
                        MySqlCommand cmd = new MySqlCommand(strcmd, con);
                        cmd.Parameters.AddWithValue("?managername", managername.Text);
                        cmd.Parameters.AddWithValue("?telephone", telephone.Text);
                        cmd.Parameters.AddWithValue("?wechat", wechat.Text);
                        cmd.Parameters.AddWithValue("?companyname", companyname.Text);
                        cmd.Parameters.AddWithValue("?province", bind_Province.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("?city", bind_City.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("?district", Bind_Area.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("?email", email.Text);
                        cmd.Parameters.AddWithValue("?id", Session["uid"]);  
                        int i = cmd.ExecuteNonQuery();
                        Console.WriteLine(i);
                        Session["managername"] = managername.Text;
                        con.Close();//关闭连接
                        Response.Redirect("launch3.aspx");

            }
        }
        public bool IsImage(string str)
        {
            bool isimage = false;
            string thestr = str.ToLower();
            //限定只能上传jpg和gif图片
            string[] allowExtension = { ".jpg", ".gif", ".bmp", ".png" };
            //对上传的文件的类型进行一个个匹对
            for (int i = 0; i < allowExtension.Length; i++)
            {
                if (thestr == allowExtension[i])
                {
                    isimage = true;
                    break;
                }
            }
            return isimage;
        }
  

        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = "Server=118.89.38.11;User ID=root;Password=sightzgo1110/*-;Database=sighzgo;CharSet=utf8;";
            MySqlConnection con = new MySqlConnection(str);//实例化链接
            con.Open();    //开启连接  
        }

        protected void bind_Province_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity(bind_Province.SelectedItem.Value);
            BindArea(bind_City.SelectedItem.Value);
        }

        protected void bind_City_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindArea(bind_City.SelectedItem.Value);
        }

        protected void companyname_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
