<%@ Page Title="Williams Specialty Company - Login" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div style="height: 359px">
    <br />
    <br />
        <asp:Label ID="lblLoginMsg" runat="server" ForeColor="White" Text="You are logged in as :" Visible="False"></asp:Label>
&nbsp;
        <asp:Label ID="lblUserName" runat="server" ForeColor="White" Text="[user name]" Visible="False"></asp:Label>
        <br />
        <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" ForeColor="White">
    </asp:Login>
</div>
</asp:Content>


