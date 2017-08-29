﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.system.Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>赛事Go-首页</title>
    <link rel="stylesheet" type="text/css" href="../css/eventmanagement.css" />
    <link rel="stylesheet" href="../css/head&foot.css" type="text/css" />
    <script type="text/javascript" src="../js/tab.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="header">

    <div class="logo">
        <a href="Home.html"><img  class="logo" src="../images/logo.jpg" alt="赛事go" /></a>
    </div>

    <div class="title">
        <h1>赛事go</h1>
    </div>

    <div class="nav">
        <ul >
            <li><a href="#">发起比赛</a></li>
            <li><a href="#">比赛管控</a></li>
            <li><a href="#">对接资源</a></li>
        </ul>
    </div>

    <div class="search">
        <img src="../images/search.jpg" alt="赛事go" />
        <input type="search" id="user_name" name="user_name" placeholder="搜索赛事或内容"/>
    </div>

    <div class="information">
    <div class="me">
        <img src="../images/me.png"/>
        <ul>
            <li><a href="#">个人资料</a></li>
            <li><br></li>
            <li><a href="#">账号安全</a></li>
            <li><br></li>
            <li><a href="#">退出账号</a></li>
        </ul>
    </div>

    <div class="e-mail">
        <img src="../images/information.png"/>
        <ul>
            <li><a href="#">私信</a></li>
            <li><br></li>
            <li><a href="#">评论</a></li>
            <li><br></li>
            <li><a href="#">系统消息</a></li>
        </ul>
    </div>
    </div>
</div>
<!--占位-->
<div id="seat"></div>

<!--主体部分-->
    <div class="table" id= table>
        <!--表左边栏-->
        <div class="table-title" id= "table-title" style="float: left;">
            <ul>
            <li class="select"><a href="#">报名系统</a></li>
            <li><a href="#">线上分组</a></li>
            <li><a href="#">作品收集</a></li>
            <li><a href="#">评分投票</a></li>
            <li><a href="#">发布通知</a></li>
        </ul>
        </div>
        
        <!--表右边栏-->
        <div class="content" id= "content" style="float: right;">
            <!--报名系统entersys-->
            <div class="entersys" style="display: block;">
                <p>新增关注xxx人</p>
                <p>新增报名xxx人</p>
                <img class="entersys-pic" src="../images/tjt1.jpg">
                <img class="entersys-pic" src="../images/tjt2.png">
                <img class="entersys-pic" src="../images/tjt3.jpg">
            </div>
            <!-- 线上分组grouping x-->
            <div class="grouping" style="display: none;"><p>线上分组 该功能暂时未开通</p></div>
            <!-- 作品收集works -->
            <div class="works" style="display: none;">
                <p>共收到xx份作品</p>
                <table>
                <tr>
                    <td>
                        <label><input type="checkbox" name="all">全选</label>
                       
                        <label>  当前展示的作品</label> 
                        <select name=""> 
                        <option value="0">全部</option> 
                        <option value="1">已下载</option> 
                        <option value="2">未下载</option>                        
                        </select> 
              
                    <td><a href="#">全部下载</a></td>
                    </td>

                </tr>
                </table>
                
            </div>
            <!-- 评分投票scorex-->
            <div class="score" style="display: none;"><p>评分投票 该功能暂时未开通</p></div>
            <!-- 发布通知notice -->
            <div class="notice" style="display: none;"><p>发布通知</p>    </div> 
        </div>
    </div>

<!--last part-->
    <div id="footer">
        <div class="footBack">
            <div class="footText1">
                <a href=""><h4>关于我们</h4></a>
                <a href=""><p>了解我们</p></a>
                <a href=""><p>联系我们</p></a>
                <a href=""><p>公众号</p></a>
            </div>
            <div class="footText2">
                <a href=""><h4>帮助中心</h4></a>
                <a href=""><p>常见问题</p></a>
                <a href=""><p>社区规范</p></a>
                <a href=""><p>产品介绍</p></a>
            </div>
            <div class="footText3">
                <a href=""><h4>合作伙伴</h4></a>
                <a href=""><p>敬请期待</p></a>
                <a href=""><p>敬请期待</p></a>
                <a href=""><p>敬请期待</p></a>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
