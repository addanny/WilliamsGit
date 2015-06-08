<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">

    <p>
        &nbsp;</p>
<ul>
    <li>
        <asp:Label ID="Label1" runat="server" style="text-decoration: underline; font-weight: 700; font-style: italic" Text="About our products"></asp:Label>
    </li>
</ul>
<div>
    <p style="width: 442px">
        Williams specialty company provides engraving services to its customers and has done so successfuly for years.</p>
</div>
<ul>
    <li>
        <asp:Label ID="Label2" runat="server" style="text-decoration: underline; font-weight: 700; font-style: italic" Text="About our services"></asp:Label>
    </li>
</ul>
<div style="width: 440px">
    We offer personalized engraving on any surface:<br />
&nbsp;&nbsp;&nbsp; <strong>Plaques</strong> to commemorate special events (graduation, weddings, sports events, you name it)<br />
&nbsp;&nbsp;&nbsp; <strong>T_shirts</strong> to add a bit of flare<br />
&nbsp;&nbsp;&nbsp; <strong>Cofee mugs, key chains</strong> and much more</div>
<br />
Check out our 
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="True" PostBackUrl="~/Products.aspx">&quot;Shop Now&quot;</asp:LinkButton>
&nbsp;section to find out more

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" Runat="Server">
    <p>
    Christina Roark, Brad Busch, David Dalloo, Jose Morales, Ionut Sava</p>
</asp:Content>

