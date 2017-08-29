<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emailcheck.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.system.emailcheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table style="width: 702px">
            <tr>
                <td colspan="3" style="height: 87px">
                    <strong>利用Web Service发送E-mail</strong></td>
            </tr>
            <tr>
                <td colspan="3" rowspan="2">
                    <table cellpadding="0" cellspacing="0" style="font-size: 9pt; width: 469px">
                        <tr>
                            <td style="width: 373px; height: 14px;">
                                发件人邮箱地址</td>
                            <td style="text-align: left; width: 356px; height: 14px;">
                                <asp:TextBox ID="txtSendFrom" runat="server" Font-Size="9pt" Width="300px"></asp:TextBox></td>
                            <td style="width: 95px; height: 14px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSendFrom"
                                    ErrorMessage="发件人邮箱不可为空！" Font-Bold="False" Font-Size="9pt">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSendFrom"
                                    ErrorMessage="邮箱格式错误！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 373px; height: 8px">
                                发件人邮箱密码</td>
                            <td style="height: 8px; text-align: left; width: 356px;">
                                <asp:TextBox ID="txtSendFromPwd" runat="server" Font-Size="9pt" Width="300px" TextMode="Password"></asp:TextBox></td>
                            <td style="width: 95px; height: 8px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSendFromPwd"
                                    ErrorMessage="发件人邮箱密码不可为空！" Font-Bold="False" Font-Size="9pt">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 373px; height: 9px;">
                                收件人邮箱地址</td>
                            <td style="text-align: left; width: 356px; height: 9px;">
                                <asp:TextBox ID="txtSendTo" runat="server" Font-Size="9pt" Width="300px"></asp:TextBox></td>
                            <td style="width: 95px; height: 9px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSendTo"
                                    ErrorMessage="收件人邮箱不可为空！" Font-Bold="False" Font-Size="9pt">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtSendTo"
                                        ErrorMessage="邮箱格式错误！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 373px; height: 5px;">
                                邮件主题</td>
                            <td style="text-align: left; width: 356px; height: 5px;">
                                <asp:TextBox ID="txtSubject" runat="server" Font-Size="9pt" Width="300px"></asp:TextBox></td>
                            <td style="width: 95px; height: 5px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 373px; height: 14px">
                                邮件内容</td>
                            <td rowspan="2" style="text-align: left; width: 356px;">
                                <asp:TextBox ID="txtContent" runat="server" Font-Size="9pt" Height="165px" TextMode="MultiLine"
                                    Width="300px"></asp:TextBox></td>
                            <td style="width: 95px; height: 14px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 373px; height: 95px">
                            </td>
                            <td style="width: 95px; height: 95px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 17px">
                                <asp:Button ID="Button1" runat="server" Font-Size="9pt" OnClick="Button1_Click" Text="发送" />
                                <input id="Reset1" style="font-size: 9pt" type="reset" value="重置" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True"
                        ShowSummary="False" />
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
