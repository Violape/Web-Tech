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
                <asp:GridView ID="Studentinfo" runat="server">

                </asp:GridView>
                <br />
            </fieldset>
        </div>
    </form>
</body>
</html>
