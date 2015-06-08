<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            height: 316px;
            width: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" Height="334px" TextMode="MultiLine" Width="431px"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftNavigation" Runat="Server">
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>

