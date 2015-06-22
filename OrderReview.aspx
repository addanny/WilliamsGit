<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderReview.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Order Review"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderRecNum" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="OrderRecNum" HeaderText="Order #" InsertVisible="False" ReadOnly="True" SortExpression="OrderRecNum">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemId" HeaderText="Item" SortExpression="ItemId" ReadOnly="True">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemQty" HeaderText="Qty" SortExpression="ItemQty" ReadOnly="True">
            </asp:BoundField>
            <asp:BoundField DataField="orderEngrave" HeaderText="Engraving" ReadOnly="True" SortExpression="orderEngrave" />
            <asp:CheckBoxField DataField="IsComplete" HeaderText="Finished" SortExpression="IsComplete">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
            <asp:CommandField EditText="Complete?" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblOrders]" DeleteCommand="DELETE FROM [tblOrders] WHERE [OrderRecNum] = @original_OrderRecNum" InsertCommand="INSERT INTO [tblOrders] ([ItemId], [ItemQty], [orderEngrave], [IsComplete]) VALUES (@ItemId, @ItemQty, @orderEngrave, @IsComplete)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblOrders] SET [ItemId] = @ItemId, [ItemQty] = @ItemQty, [orderEngrave] = @orderEngrave, [IsComplete] = @IsComplete WHERE [OrderRecNum] = @original_OrderRecNum">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderRecNum" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemId" Type="Int32" />
            <asp:Parameter Name="ItemQty" Type="Decimal" />
            <asp:Parameter Name="orderEngrave" Type="String" />
            <asp:Parameter Name="IsComplete" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemId" Type="Int32" />
            <asp:Parameter Name="ItemQty" Type="Decimal" />
            <asp:Parameter Name="orderEngrave" Type="String" />
            <asp:Parameter Name="IsComplete" Type="Boolean" />
            <asp:Parameter Name="original_OrderRecNum" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


