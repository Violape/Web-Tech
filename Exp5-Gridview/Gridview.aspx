<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridview.aspx.cs" Inherits="Clock.Exp5_Gridview.Gridview" %>
<!-- Chongqing Univercity Web development experiment 5 - Gridview -->
<!-- gridview.aspx written by Violape -->
<!-- gridview.aspx.cs used to operate the database -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Using Gridview to show and modify data</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <!-- 节标题 -->
                <legend>Studentinfo</legend>
                <!-- 新建gridview，定义样式，设置分页 -->
                <asp:GridView ID="Studentinfo" runat="server" style="text-align: center"
                    AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="stu_id"
                    Font-Size="Medium" ForeColor="#333333" GridLines="None" PageSize="20" AllowSorting="True" Width="90%">
                    <!-- 新建分页器 -->
                    <FooterStyle BackColor="#990000" Font-Bold="true" ForeColor="White"/>
                    <!-- 创建列 -->
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ItemStyle-Width="15%"/>
                        <asp:BoundField DataField="stu_name" HeaderText="姓名" ItemStyle-Width="15%"/>
                        <asp:BoundField DataField="stu_id" Readonly="true" HeaderText="学号" ItemStyle-Width="10%"/>
                        <asp:BoundField DataField="stu_gender" HeaderText="性别" ItemStyle-Width="10%"/>
                        <asp:BoundField DataField="stu_faculty" HeaderText="专业" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="stu_class" HeaderText="班级" ItemStyle-Width="30%"/>
                    </Columns>
                    <!-- 设置样式 -->
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333"/>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="true" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="true" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White"/>
                </asp:GridView>
                <br />
                <!-- 功能区 -->
                按学号查询：
                <asp:TextBox runat="server" ID="searchbyid" Width="12%"></asp:TextBox>
                <asp:Button runat="server" Text="按学号查询" OnClick="Searchbyid"/>
                <br />
                按姓名查询：
                <asp:TextBox runat="server" ID="searchbyname" Width="12%"></asp:TextBox>
                <asp:Button runat="server" Text="按姓名查询" OnClick="Searchbyname"/>
                <br />
                按学号删除：
                <asp:TextBox runat="server" ID="deletebyID" Width="12%"></asp:TextBox>
                <asp:Button runat="server" Text="按学号删除" OnClick="Deletebyid"/>
                <asp:Label runat="server" ID="deleteresult"></asp:Label>
                <br />
                添加条目（姓名，学号，性别，学院，班级）：
                <asp:TextBox runat="server" ID="insertname" Width="8%"></asp:TextBox>
                <asp:TextBox runat="server" ID="insertid" Width="6%"></asp:TextBox>
                <asp:TextBox runat="server" ID="insertgender" Width="6%"></asp:TextBox>
                <asp:TextBox runat="server" ID="insertfaculty" Width="12%"></asp:TextBox>
                <asp:TextBox runat="server" ID="insertclass" Width="12%"></asp:TextBox>
                <asp:Button runat="server" Text="添加条目" OnClick="Insert"/>
                <asp:Label runat="server" ID="insertresult"></asp:Label>
                <br />
                更改条目（姓名，学号，性别，学院，班级）：
                <asp:TextBox runat="server" ID="editname" Width="8%"></asp:TextBox>
                <asp:TextBox runat="server" ID="editid" Width="6%"></asp:TextBox>
                <asp:TextBox runat="server" ID="editgender" Width="6%"></asp:TextBox>
                <asp:TextBox runat="server" ID="editfaculty" Width="12%"></asp:TextBox>
                <asp:TextBox runat="server" ID="editclass" Width="12%"></asp:TextBox>
                <asp:Button runat="server" Text="更改条目" OnClick="Edit"/>
                <asp:Label runat="server" ID="editresult"></asp:Label>
                <br />
            </fieldset>
        </div>
    </form>
</body>
</html>
