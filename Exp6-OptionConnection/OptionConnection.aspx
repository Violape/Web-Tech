<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptionConnection.aspx.cs" Inherits="Clock.Exp6_OptionConnection.OptionConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Option Connection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>省市县三级联动</div>
        <div>
            <asp:DropDownList runat="server" ID="province">
                <asp:ListItem Text="---请选择省份---" Value="0" Selected="True"></asp:ListItem>
                <asp:ListItem Text="北京市" Value="11"></asp:ListItem>
                <asp:ListItem Text="天津市" Value="12"></asp:ListItem>
                <asp:ListItem Text="河北省" Value="13"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList runat="server" ID="city">
                <asp:ListItem Text="---请选择城市---" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList runat="server" ID="county">
                <asp:ListItem Text="---请选择区县---" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button runat="server" Text="查询" OnClick="Showitem"/>
        </div>
        <div>
            <asp:TextBox runat="server" ID="Infospace" BorderWidth="0" ReadOnly="true"></asp:TextBox>
        </div>
    </form>
</body>
</html>
