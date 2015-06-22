<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InventoryManagement.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvId" DataSourceID="SqlDataSource1" ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="InvId" HeaderText="InvId" InsertVisible="False" ReadOnly="True" SortExpression="InvId" />
        <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
        <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
    </Columns>
</asp:GridView>
<br />
<span class="auto-style2">ItemID 1 = Tshirt</span><br class="auto-style2" />
<span class="auto-style2">ItemID 2 = Plaque</span><br class="auto-style2" />
<span class="auto-style2">ItemID 3 = Engraving </span>
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblInventory]"></asp:SqlDataSource>
</asp:Content>


