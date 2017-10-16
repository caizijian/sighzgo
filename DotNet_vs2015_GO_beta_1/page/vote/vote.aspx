<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vote.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.page.vote.vote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    请输入序列号：
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="4"></asp:TextBox><br />
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">队伍1</asp:ListItem>
            <asp:ListItem Value="2">队伍2</asp:ListItem>
            <asp:ListItem Value="3">队伍3</asp:ListItem>
            <asp:ListItem Value="4">队伍4</asp:ListItem>
            <asp:ListItem Value="5">队伍5</asp:ListItem>
            <asp:ListItem Value="6">队伍6</asp:ListItem>
            <asp:ListItem Value="7">队伍7</asp:ListItem>
            <asp:ListItem Value="8">队伍8</asp:ListItem>
            <asp:ListItem Value="9">队伍9</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
