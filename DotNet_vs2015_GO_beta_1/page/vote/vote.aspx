<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vote.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.vote.vote" %>

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

    <div class="title">
    请输入序列号：
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="4" style="color:white; font-size:40px; background-color:#bdd7ee;border-color: cyan; height:45px;text-size-adjust:auto;text-emphasis-color:floralwhite;border-radius:10px 10px" Width="171px"></asp:TextBox><br />

    <div style="text-align:  center;height:500px;font-size:40px;margin-top:20px;">
        <span style="font-family:微软雅黑; color:white">我最喜爱的队伍是：</span>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="color:white;font-family:'微软雅黑';font-size:40px;margin-left:40%;text-align:left;"  >
            <asp:ListItem Value="1" >青   协</asp:ListItem>
            <asp:ListItem Value="2" >151支部</asp:ListItem>
            <asp:ListItem Value="3" >161支部</asp:ListItem>
            <asp:ListItem Value="4" >162支部</asp:ListItem>
            <asp:ListItem Value="5" >163支部</asp:ListItem>
            <asp:ListItem Value="6" >164支部</asp:ListItem>
            <asp:ListItem Value="7" >165支部</asp:ListItem>
            <asp:ListItem Value="8" >166支部</asp:ListItem>
        </asp:RadioButtonList>


       </div>
       <div style="text-align:center;">
            <asp:Button ID="Button1" runat="server" Text="投票"  style="margin-top:80px; margin-left:15px; font-size:40px; background-color:#bdd7ee;font-family:'微软雅黑';color:white;list-style: disc;border-color:cyan;border-radius:10px 10px; " OnClick="Button1_Click" Width="140px" />
       </div>
       
       </form>
    
</body>
</html>
