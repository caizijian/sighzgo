﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readonly_host.aspx.cs" Inherits="edit._readonly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../../css/head&foot.css" type="text/css" />
    <style type="text/css">
        div.list{
    position:relative;
    float:left;
    top:80px;
    width: 15%;
    height: 298px;
    margin: 10px;
    overflow: hidden;
}
        div.list li a {
    display: block;
    margin-left:30%;
    padding:0px;
    font-family: 微软雅黑;
    font-style: normal;
    font-weight: 200;
    font-size:18px ;
    text-align: center;
    color: #a0a0a0;
    text-decoration: none;
}
div.list li:hover > a{
    font-size:20px ;
    color:#ffffff ;
}
div.content{
    position:relative;
    float: left;
    top:80px;
    width: 60%;
    margin-left: 5%;
}
div.content h3{
    display: block;
    margin-left:2%;
    padding:0;
    font-family: 微软雅黑;
    font-style: normal;
    font-weight: 200;
    font-size:18px ;
    text-align: left;
    color: #ffffff;
    text-decoration: none;
}
    </style>
    <script>
        function change(string )
            {
            document.getElementById("uname").value = "abc";
            }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="header">

        <div class="logo">
            <a href="Home.html"><img  class="logo" src="../../img/system/home/logo.jpg" alt="赛事go" /></a>
        </div>

        <div class="title">
            <h1>赛事go</h1>
        </div>

        <div class="nav">
            <ul >
                <li><a href="launch.html">发起比赛</a></li>
                <li><a href="#">比赛管控</a></li>
                <li><a href="Game_all.html">赛事资讯</a></li>
                <li><a href="SignIn.html">登录与注册</a></li>
            </ul>
        </div>

        <div class="search">
            <img src="../../img/system/home/search.jpg" alt="赛事go" />
            <input type="search" id="user_name" name="user_name" placeholder="搜索赛事或内容"/>
        </div>

        <div class="information">
            <div class="me">
                <img src="../../img/system/home/me.png" />
                <ul>
                    <li><a href="me_for_sponsor_readonly.html">个人资料</a></li>
                    <li><br/></li>
                    <li><a href="Resetpassword.html">账号安全</a></li>
                    <li><br/></li>
                    <li><a href="#" onclick="logout()">退出账号</a></li>
                </ul>
            </div>

     

            <div class="e-mail">
                <img src="../../img/system/home/information.png"/>
                <ul>
                    <li><a href="#">私信</a></li>
                    <li><br/></li>
                    <li><a href="#">评论</a></li>
                    <li><br/></li>
                    <li><a href="#">系统消息</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div>
    <div class="list">
        <nav>
            <ul>
                <li >
                    <a href="#">个人资料</a>
                    <div class="line"></div><br />
                </li>
                <li>
                    <a href="#">账号安全</a>
                    <div class="line"></div><br />
                </li>
                <li>
                    <a href="#">退出登录</a>
                    <div class="line"></div>
                </li>
            </ul>
        </nav>
    </div>
   <div class="content">
    <br/>
        <br /><h3>个人头像</h3>
        <div class="lineone"></div><hr />
        <br /><br />
         <span class="sl-custom-file">
             <p><asp:Image ID="head" runat="server" style="height:100px;margin-left:300px;"/></p>
         </span>
        <br /><br /><br /><br /><br />
        <h3>基本资料</h3>
        <div class="lineone"></div><hr />
        <div class="text">
            <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>负责人姓名：</p></div>
            <div style="width:280px;display:inline;">
                <asp:Label ID="Label1" runat="server" Text="姓名" style="margin-left:20px; width :240px;display:inline;"></asp:Label></div></div>

            <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>公司/组织名称：</p></div>
            <div style="width:280px;display:inline;"></div>
                <div style="width:280px;display:inline;">
                    <asp:Label ID="Label2" runat="server" style="margin-left:20px; width :240px;display:inline;" Text="公司"></asp:Label>
                </div>
            </div>

            <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>营业执照(或其他证明文件)：</p></div>
            <div style="width:280px;display:inline;">

                <div style="width:280px;display:inline;">
                    <asp:Label ID="Label4" runat="server" style="margin-left:20px; width :240px;display:inline;" Text="待审核" visible="true" ></asp:Label>
                    <asp:Image ID="evidence"  runat="server" visible="false" />
                </div>
            </div>

            <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>主营业务：</p></div>
                <div style="width:240px;display:inline;">
                    <asp:TextBox ID="Label5" runat="server" TextMode="MultiLine" ReadOnly="True" Style="margin-left:20px; Height:100px;display:inline;" BackColor="#002D54" BorderColor="#002D54" Font-Size="Larger" ForeColor="White"></asp:TextBox >
                </div>
            </div>

            <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>微信号：</p></div>
            <div style="width:280px;display:inline;"></div>
                <div style="width:280px;display:inline;">
                    <asp:Label ID="Label6" runat="server" style="margin-left:20px; width :240px;display:inline;" Text="微信"></asp:Label>
                </div>
            </div>

             <div style="margin-top:10px;float:left;width:100%"><div style="width:240px;text-align:right;float:left;display:inline;"><p>联系电话：</p></div>
            <div style="width:280px;display:inline;"></div>
                 <div style="width:280px;display:inline;">
                     <asp:Label ID="Label7" runat="server" style="margin-left:20px; width :240px;display:inline;" Text="电话"></asp:Label>
                 </div>
            </div>

             <div style="margin-top:10px;float:left;width:100%">
             <asp:Button ID="revise" runat="server" Text="编辑" OnClick="revise_Click"  /> </div>
        </div>
       
</div>

        </div>
        <div id="footer">
        <div class="footBack">
            <div class="footText1">
                <a href="#"><h4>关于我们</h4></a>
                <a href="#"><p>了解我们</p></a>
                <a href="#"><p>联系我们</p></a>
                <a href="#"><p>公众号</p></a>
            </div>
            <div class="footText2">
                <a href="#"><h4>帮助中心</h4></a>
                <a href="#"><p>常见问题</p></a>
                <a href="#"><p>社区规范</p></a>
                <a href="#"><p>产品介绍</p></a>
            </div>
            <div class="footText3">
                <a href="#"><h4>合作伙伴</h4></a>
                <a href="#"><p>敬请期待</p></a>
                <a href="#"><p>敬请期待</p></a>
                <a href="#"><p>敬请期待</p></a>
            </div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>
