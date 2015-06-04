﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            border-style: solid;
            border-width: 2px;
            padding: 1px 4px;
            height: 92px;
            width: 442px;
        }
        .auto-style3 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            height: 88px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
        <table class="auto-style2">
            <tbody><tr>
                <th rowspan="6" class="auto-style3">
                    <img runat="server" src="~/Pictures/T-Shirt%20Pics.jpg" style="height: 67px; width: 94px"/>
                </th>
                <th class="auto-style5">Name: 
                </th><td class="auto-style5">T-Shirt</td>
            </tr>
            <tr>
                <th class="auto-style5">Type: </th>
                <td class="auto-style5">Cloth</td>
            </tr>
            <tr>
                <th class="auto-style5">Price: </th>
                <td class="auto-style5">$10.00</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">Printed T-Shirts</td>
            </tr>            
           </tbody></table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy" />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Qty:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="29px"></asp:TextBox>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Shop.aspx">Add</asp:LinkButton>
        <br />
    <hr />
    <table class="auto-style2">
            <tbody><tr>
                <th rowspan="6" class="auto-style3">
                    <img runat="server" src="~/Pictures/photo-plaques-group.jpg" style="height: 67px; width: 94px"/>
                </th>
                <th class="auto-style5">Name: 
                </th><td class="auto-style5">Plaques</td>
            </tr>
            <tr>
                <th class="auto-style5">Type: </th>
                <td class="auto-style5">Wood</td>
            </tr>
            <tr>
                <th class="auto-style5">Price: </th>
                <td class="auto-style5">$20.00</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">Wooden Plaques</td>
            </tr>            
           </tbody></table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buy" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Qty:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="29px"></asp:TextBox>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Shop.aspx">Add</asp:LinkButton>
    <br/>
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftNavigation" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" Runat="Server">
</asp:Content>
