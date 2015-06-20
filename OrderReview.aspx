<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderReview.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Order Review"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderStatID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="OrderStatID" HeaderText="OrderStatID" InsertVisible="False" ReadOnly="True" SortExpression="OrderStatID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="OrderComp" HeaderText="OrderComp" SortExpression="OrderComp">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="OrderTotal" DataFormatString="&quot;{0:C}&quot;" HeaderText="OrderTotal" SortExpression="OrderTotal">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblOrderStatus]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblOrderStatus] WHERE [OrderStatID] = @original_OrderStatID AND [OrderComp] = @original_OrderComp AND [OrderTotal] = @original_OrderTotal" InsertCommand="INSERT INTO [tblOrderStatus] ([OrderComp], [OrderTotal]) VALUES (@OrderComp, @OrderTotal)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblOrderStatus] SET [OrderComp] = @OrderComp, [OrderTotal] = @OrderTotal WHERE [OrderStatID] = @original_OrderStatID AND [OrderComp] = @original_OrderComp AND [OrderTotal] = @original_OrderTotal">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderStatID" Type="Int32" />
            <asp:Parameter Name="original_OrderComp" Type="Int32" />
            <asp:Parameter Name="original_OrderTotal" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderComp" Type="Int32" />
            <asp:Parameter Name="OrderTotal" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderComp" Type="Int32" />
            <asp:Parameter Name="OrderTotal" Type="Decimal" />
            <asp:Parameter Name="original_OrderStatID" Type="Int32" />
            <asp:Parameter Name="original_OrderComp" Type="Int32" />
            <asp:Parameter Name="original_OrderTotal" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


