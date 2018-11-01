<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridview.aspx.cs" Inherits="Clock.Exp5_Gridview.Gridview" %>

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
                <legend>Using Gridview to show and modify data</legend>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:pubsConnectionString %>"
                    SelectCommand = "SELECT * FROM xsmd"
                    DeleteCommand = "DELETE FROM xsmd WHERE stu_id = @stu_id"
                    InsertCommand = "INSERT INTO xsmd VALUES (@stu_name, @stu_id, @stu_gender, @stu_faculty, @stu_class)"
                    UpdateCommand = "UPDATE xsmd SET stu_name = @stu_name, stu_id = @stu_id, stu_gender = @stu_gender, stu_faculty = @stu_faculty, stu_class = @stu_class">
                    <DeleteParameters>
                        <asp:Parameter Name="stu_id" Type="Int32"/>
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="stu_name" Type="String"/>
                        <asp:Parameter Name="stu_id" Type="Int32"/>
                        <asp:Parameter Name="stu_gender" Type="String"/>
                        <asp:Parameter Name="stu_faculty" Type="String"/>
                        <asp:Parameter Name="stu_class" Type="String"/>
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="stu_name" Type="String"/>
                        <asp:Parameter Name="stu_id" Type="Int32"/>
                        <asp:Parameter Name="stu_gender" Type="String"/>
                        <asp:Parameter Name="stu_faculty" Type="String"/>
                        <asp:Parameter Name="stu_class" Type="String"/>
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="Studentinfo" runat="server"
                    AllowPaging="true" AutoGenerateColumns="false" CellPadding="4" DataKeyNames="stu_id" DataSourceID="SqlDataSource1"
                    Font-Size="Medium" ForeColor="#333333" GridLines="None" PageSize="20">
                    <FooterStyle BackColor="#990000" Font-Bold="true" ForeColor="White"/>
                    <Columns>
                        <asp:BoundField DataField="stu_name" HeaderText="姓名" ReadOnly="true"/>
                        <asp:BoundField DataField="stu_id" HeaderText="学号" ReadOnly="true" SortExpression="stu_id" />
                        <asp:BoundField DataField="stu_gender" HeaderText="性别" ReadOnly="true" SortExpression="stu_gender" />
                        <asp:BoundField DataField="stu_faculty" HeaderText="专业" ReadOnly="true" SortExpression="stu_faculty" />
                        <asp:BoundField DataField="stu_class" HeaderText="班级" ReadOnly="true" SortExpression="stu_class" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333"/>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="true" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="true" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White"/>
                </asp:GridView>
                <br />
            </fieldset>
        </div>
    </form>
</body>
</html>
