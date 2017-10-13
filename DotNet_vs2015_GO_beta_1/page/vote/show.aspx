<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.vote.show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 赛事GO 投票评分结果 </title>
    <script>
             function myrefresh()
             {
                 window.location.href="show.aspx";
                   
             }
 
             setTimeout(myrefresh,2000); //指定2秒刷新一次
              
     </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height:100px;position:relative; padding:10px;">
        <div id="bar1" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:5%;"></div>
        <div id="bar2" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:15%;"></div>
        <div id="bar3" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:25%;"></div>
        <div id="bar4" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:35%;"></div>
        <div id="bar5" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:45%;"></div>
        <div id="bar6" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:55%;"></div>
        <div id="bar7" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:65%;"></div>
        <div id="bar8" runat ="server" style="width:20px;position:absolute; bottom:0px;margin-bottom:20px;display:inline;background-color:blue;margin-left:75%;"></div>
    </div>
    <div> 
        <asp:Label ID="Label1" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Label" style="display:inline"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="Label" style="display:inline"></asp:Label>
    </div>
    </form>
</body>
</html>
