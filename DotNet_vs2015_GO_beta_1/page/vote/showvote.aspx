<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showvote.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.showvote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8；width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" name="viewport" />
    <title>赛事GO 评分投票系统</title>
    <style>
        
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-size:100% 100%;
            background-image:url(bg.png) ;
            background-repeat:no-repeat;
            width: 100%;
            height: 750px;
        }
        
        
        /*票数的样式，因为是假的数据，先取消掉了*/
        .piao{
            height: 10%;
            font-family:方正经黑简体;
            font-size:2em;
            z-index:1;
        }
        #piao1{
            position: absolute;
            float:left;
            left: 11%;
            color: #FD1A16;
            bottom: 55%;
            font-weight:bolder;
        }
        #piao2{
            position: absolute;
            float:left;
            left: 21%;
            bottom: 55%;
            color: #FF9100;
            font-weight:bolder;
        }
        #piao3{
            position: absolute;
            left:34%;
            float:left; 
            color: #FFF810;
            bottom: 55%;
            font-weight:bolder;
        }
        #piao4{
            bottom: 55%;
            position: absolute;
            float:left;
            left: 44%;
            color: #7AC943;
            font-weight:bolder;
        }
        #piao5{
            position: absolute;
            left: 56%;
             float:left;
             bottom: 55%;
            color: #1E7D27;
            font-weight:bolder;
        }
        #piao6{
            position: absolute;
            left: 66%;
             float:left;
            bottom: 55%;
             color: #25A1DB;
            font-weight:bolder;
        }
        #piao7{
            position: absolute;
            left: 76%;
            float:left;
            bottom: 55%;
            color: #93278F;
            font-weight:bolder;
        }
        #piao8{
            position: absolute;
            left:88%;
             float:left;
             bottom: 55%;
            color: #FA746B;
            font-weight: bolder;
        }
        /*柱子的样式，bottom和left可以控制位置，bottom是距离底部的距离，left是距离左边的距离*/
        .long{
            height:46.67%;
            bottom:20%;
            list-style:none;
            text-align: center;
        }
        .long>li {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            width: 3%;
            height: 100%;
           /* background-color: red;*/
            display: inline-block;
            position: absolute;
        }
        #long1{
            position: absolute;
            background-color: #FD1A16;
            height: 12%;
            bottom: 42%;
            left: 10%;
        }
        #long2{
            position: absolute;
            background-color:#FF9100;
            height: 12%;
            bottom:42%;
            left: 20%;
        }
        #long3{
            background-color: #FFF810;
            height: 12%;
            position: absolute;
            bottom:42%;
            left:33%;
        }
        #long4{
            background-color: #7AC943;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 43%;
        }
        #long5{
            background-color: #1E7D27;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 55%;
        }
        #long6{
            background-color: #25A1DB;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 65%;
        }
        #long7{
            background-color: #93278F;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 75%;
        }
        #long8{
            background-color: #FA746B;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 87%;
        }
       
        .duiwu{
            display: inline-block;
            font-size:2.5em;
            width: 10%;
            bottom: 38%;
            font-weight:600;
        }
        .team{
            font-family:方正经黑简体;
            height: 5%;
            color:black;
        }
        /*队伍的样式，bottom和left可以控制位置，bottom是距离底部的距离，left是距离左边的距离*/
        #team1{
            position: absolute;
            float:left;
            left: 9%;
            /*bottom: 100px;*/
            /*color: #ff696a;*/
        }
        #team2{
            position: absolute;
            float:left;
            left: 19%;
            /*color: #ee8943;*/
        }
        #team3{
            position: absolute;
            float:left;
            left: 32%;
            /*color: #ffe699;*/
        }
        #team4{
            position: absolute;
            left: 42%;
            /*color: #b8d9a2;*/
        }
        #team5{
            position: absolute;
            left: 54%;
            /*color: #a8d18d;*/
        }
        #team6{
            position: absolute;
            left: 64%;
            /*color: #8fabdd;*/
        }
        #team7{
            position: absolute;
            left: 74%;
            /*color: #b482db;*/
        }
        #team8{
            position: absolute;
            left: 86%;
            /*color: #ffabab;*/
        }
        .total{
            display: inline-block;
            width: 20%;
            height: 10%;
            position: absolute;
            text-align:center;
            font-family:方正经黑简体;
            bottom: 25%;
            left:40%;
            font-size:2em;
            font-weight:bold;
            color:black;
        }

        @media screen and (max-width: 900px){
          *{
            margin: 0;
            padding: 0;
        }
        body{
            background-size:100% 100%;
            background-image:url(bg.png) ;
            background-repeat:no-repeat;
            width: 100%;
            height: 750px;
        }
        
        
        /*票数的样式，因为是假的数据，先取消掉了*/
        .piao{
            height: 10%;
            font-family:方正经黑简体;
            font-size:2em;
            z-index:1;
        }
        #piao1{
            position: absolute;
            float:left;
            left: 11%;
            color: #FD1A16;
            bottom: 55%;
            font-weight:bolder;
        }
        #piao2{
            position: absolute;
            float:left;
            left: 21%;
            bottom: 55%;
            color: #FF9100;
            font-weight:bolder;
        }
        #piao3{
            position: absolute;
            left:34%;
            float:left; 
            color: #FFF810;
            bottom: 55%;
            font-weight:bolder;
        }
        #piao4{
            bottom: 55%;
            position: absolute;
            float:left;
            left: 44%;
            color: #7AC943;
            font-weight:bolder;
        }
        #piao5{
            position: absolute;
            left: 56%;
             float:left;
             bottom: 55%;
            color: #1E7D27;
            font-weight:bolder;
        }
        #piao6{
            position: absolute;
            left: 66%;
             float:left;
            bottom: 55%;
             color: #25A1DB;
            font-weight:bolder;
        }
        #piao7{
            position: absolute;
            left: 76%;
            float:left;
            bottom: 55%;
            color: #93278F;
            font-weight:bolder;
        }
        #piao8{
            position: absolute;
            left:88%;
             float:left;
             bottom: 55%;
            color: #FA746B;
            font-weight: bolder;
        }
        /*柱子的样式，bottom和left可以控制位置，bottom是距离底部的距离，left是距离左边的距离*/
        .long{
            height:46.67%;
            bottom:20%;
            list-style:none;
            text-align: center;
        }
        .long>li {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            width: 3%;
            height: 100%;
           /* background-color: red;*/
            display: inline-block;
            position: absolute;
        }
        #long1{
            position: absolute;
            background-color: #FD1A16;
            height: 12%;
            bottom: 42%;
            left: 10%;
        }
        #long2{
            position: absolute;
            background-color:#FF9100;
            height: 12%;
            bottom:42%;
            left: 20%;
        }
        #long3{
            background-color: #FFF810;
            height: 12%;
            position: absolute;
            bottom:42%;
            left:33%;
        }
        #long4{
            background-color: #7AC943;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 43%;
        }
        #long5{
            background-color: #1E7D27;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 55%;
        }
        #long6{
            background-color: #25A1DB;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 65%;
        }
        #long7{
            background-color: #93278F;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 75%;
        }
        #long8{
            background-color: #FA746B;
            height: 12%;
            position: absolute;
            bottom: 42%;
            left: 87%;
        }
       
        .duiwu{
            display: inline-block;
            font-size:0.8em;
            width: 10%;
            bottom: 38%;
            font-weight:600;
        }
        .team{
            font-family:方正经黑简体;
            height: 5%;
            color:black;
        }
        /*队伍的样式，bottom和left可以控制位置，bottom是距离底部的距离，left是距离左边的距离*/
        #team1{
            position: absolute;
            float:left;
            left: 9%;
            /*bottom: 100px;*/
            /*color: #ff696a;*/
        }
        #team2{
            position: absolute;
            float:left;
            left: 19%;
            /*color: #ee8943;*/
        }
        #team3{
            position: absolute;
            float:left;
            left: 32%;
            /*color: #ffe699;*/
        }
        #team4{
            position: absolute;
            left: 42%;
            /*color: #b8d9a2;*/
        }
        #team5{
            position: absolute;
            left: 54%;
            /*color: #a8d18d;*/
        }
        #team6{
            position: absolute;
            left: 64%;
            /*color: #8fabdd;*/
        }
        #team7{
            position: absolute;
            left: 74%;
            /*color: #b482db;*/
        }
        #team8{
            position: absolute;
            left: 86%;
            /*color: #ffabab;*/
        }
        .total{
            display: inline-block;
            width: 20%;
            height: 10%;
            position: absolute;
            text-align:center;
            font-family:方正经黑简体;
            bottom: 25%;
            left:40%;
            font-size:1em;
            font-weight:bold;
            color:black;
        }
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
          <ContentTemplate>  
              
    <div class="title">
        
    <p></p>
        
    </div>
             
        <div class="piao">
    <asp:Label ID="piao1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao3" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao4" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao5" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao6" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao7" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao8" runat="server" Text="Label"></asp:Label>

</div>

<div class="content" >
    <ul class="long">
        <li id="long1" runat ="server"></li>
        <li id="long2" runat ="server"></li>
        <li id="long3" runat ="server"></li>
        <li id="long4" runat ="server"></li>
        <li id="long5" runat ="server"></li>
        <li id="long6" runat ="server"></li>
        <li id="long7" runat ="server"></li>
        <li id="long8" runat ="server"></li>
    </ul>
</div>

<div style="height:12%;width:90%;margin-left:4.7%;background-image:url(云.png);background-size:100% 100%;z-index:0;bottom:40%;position: absolute;">
    <img src="云.png" style="position: absolute; height:100%;width:100%;"/>
    
</div>


<div class="team">
    <p id="team1" class="duiwu">青协</p>
    <p id="team2" class="duiwu">151支队</p>
    <p id="team3" class="duiwu">161支队</p>
    <p id="team4" class="duiwu">162支队</p>
    <p id="team5" class="duiwu">163支队</p>
    <p id="team6" class="duiwu">164支队</p>
    <p id="team7" class="duiwu">165支队</p>
    <p id="team8" class="duiwu">166支队</p>
</div>

<p class="total">已投票人数：<asp:Label ID="totalpiao" runat="server" Text="0"></asp:Label></p>
              

<asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>        
</body>
</html>
