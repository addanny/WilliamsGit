<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderReview.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Order Review" Font-Size="XX-Large"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderRecNum" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="OrderRecNum" HeaderText="OrderRecNum" InsertVisible="False" ReadOnly="True" SortExpression="OrderRecNum" />
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" SortExpression="ItemId" />
            <asp:BoundField DataField="ItemQty" HeaderText="ItemQty" SortExpression="ItemQty" />
            <asp:BoundField DataField="orderEngrave" HeaderText="orderEngrave" SortExpression="orderEngrave" />
            <asp:CheckBoxField DataField="IsComplete" HeaderText="IsComplete" SortExpression="IsComplete" />
        </Columns>
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


