<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addnotice.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.addnotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    通知内容：
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="发布" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
