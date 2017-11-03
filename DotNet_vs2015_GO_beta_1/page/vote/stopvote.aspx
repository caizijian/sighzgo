<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stopvote.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.vote.stopvote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>赛事GO 评分投票系统</title>
     <style>
         *{
            margin: 0;
            padding: 0;
        }
        body{
            text-align:center;
            background-color: #bdd7ee;
            height:100%;
            width:100%;
        }
        .title{
            width: 100%;
            height: 40px;
            padding-top:20px;
            font-family:"微软雅黑";
            color: white;
            font-size:40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div style="text-align:center;">
           <span style="color:#002d54;font-size:40px;font-family:'微软雅黑';font-weight: 900">
            赛事GO 评分投票系统
           </span> 
    </div>

        <div style="text-align:  center;height:500px;font-size:40px;margin-top:20px;">
        <span style="font-family:微软雅黑; color:white">投票已结束！</span>
            </div>
    </form>
</body>
</html>
