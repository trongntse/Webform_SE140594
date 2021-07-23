<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View Job.aspx.cs" Inherits="Webform_SE140594.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size:medium; background-color: blueviolet">This is content of job table</div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="job_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="job_id" HeaderText="job_id" ReadOnly="True" SortExpression="job_id" />
            <asp:BoundField DataField="job_desc" HeaderText="job_desc" SortExpression="job_desc" />
            <asp:BoundField DataField="min_lvl" HeaderText="min_lvl" SortExpression="min_lvl" />
            <asp:BoundField DataField="max_lvl" HeaderText="max_lvl" SortExpression="max_lvl" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs1ConnectionString2 %>" DeleteCommand="DELETE FROM [jobs] WHERE [job_id] = @job_id" InsertCommand="INSERT INTO [jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (@job_id, @job_desc, @min_lvl, @max_lvl)" SelectCommand="SELECT * FROM [jobs]" UpdateCommand="UPDATE [jobs] SET [job_desc] = @job_desc, [min_lvl] = @min_lvl, [max_lvl] = @max_lvl WHERE [job_id] = @job_id">
    <DeleteParameters>
        <asp:Parameter Name="job_id" Type="Int16" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="job_id" Type="Int16" />
        <asp:Parameter Name="job_desc" Type="String" />
        <asp:Parameter Name="min_lvl" Type="Byte" />
        <asp:Parameter Name="max_lvl" Type="Byte" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="job_desc" Type="String" />
        <asp:Parameter Name="min_lvl" Type="Byte" />
        <asp:Parameter Name="max_lvl" Type="Byte" />
        <asp:Parameter Name="job_id" Type="Int16" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />

</asp:Content>
