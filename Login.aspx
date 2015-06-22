﻿<%@ Page Title="Williams Specialty Company - Login" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" ForeColor="White" VisibleWhenLoggedIn="False">
    </asp:Login>
        <br />
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Customer.aspx" Text="Create User" Visible="False" />
    <br />
        <br />
        <br />
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
</div>
</asp:Content>


