<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testbeauty.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.beautytest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .texttitle {
            font-size: 14px;
            font-weight: bolder;
            color: #909090;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" CellPadding="2" CellSpacing="2" BorderStyle="Inset" BackColor="White" Width="100%" HeaderStyle-Font-Names="Verdana" HeaderStyle-Font-Size="12pt" HeaderStyle-HorizontalAlign="center" HeaderStyle-Font-Bold="True" ItemStyle-BackColor="#000000" ItemStyle-ForeColor="#002d54" FooterStyle-Font-Size="9pt" FooterStyle-Font-Italic="True" BorderColor="#002D54" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" BorderWidth="10px" GridLines="Both" CssClass="auto-style1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
<FooterStyle Font-Italic="True" Font-Size="9pt"></FooterStyle>

<HeaderStyle HorizontalAlign="Center" Font-Bold="True" Font-Names="Verdana" Font-Size="12pt"></HeaderStyle>

<ItemStyle BackColor="White" ForeColor="Black"></ItemStyle>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="正在报名" CssClass="game_status"></asp:Label></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="赛事名称" CssClass="gametitle"></asp:Label></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Button" /></td>
                    </tr>
                    <tr>
                        <td>主办方名称</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>竞赛级别</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        <td>报名时间</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                     <tr>
                   <td>  比赛时间</td>
                           <td>    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                 </tr>
                </ItemTemplate>
               
            </asp:DataList>
        </div>
    </form>
</body>
</html>
