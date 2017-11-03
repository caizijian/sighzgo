<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shows.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.vote.shows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #BD {
            background-size:100%;
            background-image:url(bg.jpg) ;
            background-repeat:no-repeat;
            width: 100%;
            height: 900px;
        }
                /*票数的样式，因为是假的数据，先取消掉了*/
        .piao{
            width:100%;
            position: relative;
            height: 160px;
            margin-left:20px;
            margin-right:20px;
        }
        #piao1{
            position: absolute;
            left: 351px;
            bottom: -130px;
            color: #ff696a;
            font-weight:bolder;
        }
        #piao2{
            position: absolute;
            left: 430px;
            bottom: -130px;
            color: #ee8943;
            font-weight:bolder;
        }
        #piao3{
            position: absolute;
            left: 560px;
            bottom: -130px;
            color: #ffe699;
            font-weight:bolder;
        }
        #piao4{
            position: absolute;
            left: 640px;
            bottom: -130px;
            color: #b8d9a2;
            font-weight:bolder;
        }
        #piao5{
            position: absolute;
            left: 770px;
            bottom: -130px;
            color: #a8d18d;
            font-weight:bolder;
        }
        #piao6{
            position: absolute;
            left: 850px;
            bottom: -130px;
            color: #8fabdd;
            font-weight:bolder;
        }
        #piao7{
            position: absolute;
            left: 980px;
            bottom: -130px;
            color: #b482db;
            font-weight:bolder;
        }
        #piao8{
            position: absolute;
            left: 1061px;
            bottom: -130px;
            color: #ffabab;
            font-weight:bolder;
        }

         /*柱子的样式，bottom和left可以控制位置，bottom是距离底部的距离，left是距离左边的距离*/
        .long {
            height:400px;
        }
        #long1{
            background-color: #ff696a;
             height: 70px;
            position: absolute;
            margin-bottom: 0px;
            left: 295px;
            top: 816px;
            width: 120px;
        }
        #long2{
            background-color: #ee8943;
            margin-left: 60px;
            height: 70px;
            position: absolute;
            margin-bottom: 0px;
             top: 816px;
            left: 477px;
            width: 120px;
        }
        #long3{
            background-color: #ffe699;
            margin-left:100px;
            height: 70px;
            position: absolute;
             margin-bottom: 0px;
             top: 816px;
            left: 850px;
            width: 120px;
        }
        #long4{
            background-color: #b8d9a2;
            margin-left: 50px;
            height: 70px;
            position: absolute;
            margin-bottom: 0px;
             top: 815px;
            left: 1115px;
             width: 120px;
        }
        #long5{
            background-color: #a8d18d;
            margin-left:100px;
            height: 40px;
            position: absolute;
            bottom: 70px;
            left: 660px;
        }
        #long6{
            background-color: #8fabdd;
            margin-left: 50px;
            height: 40px;
            position: absolute;
            bottom: 70px;
            left: 790px;
        }
        #long7{
            background-color: #b482db;
            margin-left:100px;
            height: 40px;
            position: absolute;
            bottom: 70px;
            left: 870px;
        }
        #long8{
            background-color: #ffabab;
            margin-left: 50px;
            height: 40px;
            position: absolute;
            bottom: 70px;
            left: 1000px;
        }

        .total{
            display: inline-block;
            width: 250px;
            height: 30px;
            position: absolute;
            bottom: 150px;
            font-size:20px;
            font-weight:bold;
            color:white;
        }
    </style>
</head>
<body id="BD" >
    <form id="form1" runat="server">
    
     <div class="piao">
    <asp:Label ID="piao2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao3" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao4" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao5" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao6" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao7" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="piao8" runat="server" Text="Label"></asp:Label>
    </div>
    
        <div class="content">

    <ul class="long">
        <li id="long1" runat ="server"></li>
        <li id="long2" runat ="server"></li>
        <li id="long3" runat ="server"></li>
        <li id="long4" runat ="server"></li>
        <li id="long5" runat ="server"></li>
        <li id="long6" runat ="server"></li>
        <li id="long7" runat ="server"></li>
        <li id="long8" runat ="server"></li>
        <li>
    <asp:Label ID="piao1" runat="server" Text="Label"></asp:Label>
        </li>
        <li></li>
    </ul>
</div>

        <div class="team">
    <p id="team1" class="duiwu">青协</p>
    <p id="team2" class="duiwu">151支部</p>
    <p id="team3" class="duiwu">161支部</p>
    <p id="team4" class="duiwu">162支部</p>
    <p id="team5" class="duiwu">163支部</p>
    <p id="team6" class="duiwu">164支部</p>
    <p id="team7" class="duiwu">165支部</p>
    <p id="team8" class="duiwu">166支部</p>
</div>

        <div style="text-align:center"><p class="total">已投票人数：<asp:Label ID="totalpiao" runat="server" Text="0"></asp:Label></p></div>
        
    </form>
</body>
</html>
