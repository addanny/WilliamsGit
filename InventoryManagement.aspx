<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InventoryManagement.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
<br />
    <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="White" Text="Inventory Management"></asp:Label>
    <span class="auto-style2">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InvId" DataSourceID="SqlDataSource1" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="InvId" HeaderText="Inventory ID" InsertVisible="False" ReadOnly="True" SortExpression="InvId" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:CommandField ShowEditButton="True" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <br />
    ItemID 1 = Tshirt</span><br class="auto-style2" />
<span class="auto-style2">ItemID 2 = Plaque</span><br class="auto-style2" />
<span class="auto-style2">ItemID 3 = Engraving </span>
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblInventory]" DeleteCommand="DELETE FROM [tblInventory] WHERE [InvId] = @InvId" InsertCommand="INSERT INTO [tblInventory] ([Qty], [ItemID]) VALUES (@Qty, @ItemID)" UpdateCommand="UPDATE [tblInventory] SET [Qty] = @Qty, [ItemID] = @ItemID WHERE [InvId] = @InvId">
    <DeleteParameters>
        <asp:Parameter Name="InvId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Qty" Type="Decimal" />
        <asp:Parameter Name="ItemID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Qty" Type="Decimal" />
        <asp:Parameter Name="ItemID" Type="Int32" />
        <asp:Parameter Name="InvId" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


