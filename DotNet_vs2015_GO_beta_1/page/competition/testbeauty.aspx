<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testbeauty.aspx.cs" Inherits="DotNet_vs2015_GO_beta_1.beautytest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server"  style="TABLE-LAYOUT: fixed" Width="100%" >
<ItemStyle BackColor="White" ForeColor="Black"></ItemStyle>
                <ItemTemplate>
                    <div>
                    <tr >
                        <td style="width:150px;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("content") %>' ></asp:Label></td>
                        <td style="width:150px;text-overflow:ellipsis; white-space:nowrap;overflow:hidden;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("competitionname") %>' ></asp:Label></td>
                        <td style="width:100px;"><asp:Button ID="Button1" runat="server" Text="点击报名" OnClick="Button1_Click" /></td>                           
                    </tr>
                    <tr >
                        <td style="width:150px;">主办方名称:</td>
                        <td style="width:150px;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("companyname") %>'></asp:Label></td>
                    </tr>
                    <tr >
                        <td style="width:150px;">竞赛级别:</td>
                        <td style="width:150px;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("level") %>'></asp:Label></td>
                        <td style="width:100px;">报名时间:</td>
                        <td style="width:150px;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("signupstarttime") %>'></asp:Label>--<asp:Label ID="Label7" runat="server" Text='<%# Eval("ddl") %>'></asp:Label>

                        </td>
                    </tr>
                     <tr>
                        <td style="width:150px;">  比赛时间</td>
                        <td style="width:150px;"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("starttime") %>'></asp:Label>--<asp:Label ID="Label8" runat="server" Text='<%# Eval("endtime") %>'></asp:Label></td>               
                     </tr>  
                       <hr> 
                        </div> 
                </ItemTemplate>            
            </asp:DataList>
        </div>        
    </form>
</body>
</html>
