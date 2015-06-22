<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Enter Customer Data"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="First name: "></asp:Label>
    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Last name: "></asp:Label>
    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Address: "></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" Width="347px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="City:"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="State: "></asp:Label>
&nbsp;
    <asp:DropDownList ID="ddState" runat="server">
        <asp:ListItem>AL</asp:ListItem>
        <asp:ListItem>AK</asp:ListItem>
        <asp:ListItem>AZ</asp:ListItem>
        <asp:ListItem>AR</asp:ListItem>
        <asp:ListItem>CA</asp:ListItem>
        <asp:ListItem>CO</asp:ListItem>
        <asp:ListItem>CT</asp:ListItem>
        <asp:ListItem>DE</asp:ListItem>
        <asp:ListItem>FL</asp:ListItem>
        <asp:ListItem>GA</asp:ListItem>
        <asp:ListItem>HI</asp:ListItem>
        <asp:ListItem>ID</asp:ListItem>
        <asp:ListItem>IL</asp:ListItem>
        <asp:ListItem>IN</asp:ListItem>
        <asp:ListItem>IA</asp:ListItem>
        <asp:ListItem>KS</asp:ListItem>
        <asp:ListItem>KY</asp:ListItem>
        <asp:ListItem>LA</asp:ListItem>
        <asp:ListItem>ME</asp:ListItem>
        <asp:ListItem>MD</asp:ListItem>
        <asp:ListItem>MA</asp:ListItem>
        <asp:ListItem>MI</asp:ListItem>
        <asp:ListItem>MN</asp:ListItem>
        <asp:ListItem>MS</asp:ListItem>
        <asp:ListItem>MO</asp:ListItem>
        <asp:ListItem>MT</asp:ListItem>
        <asp:ListItem>NE</asp:ListItem>
        <asp:ListItem>NV</asp:ListItem>
        <asp:ListItem>NH</asp:ListItem>
        <asp:ListItem>NJ</asp:ListItem>
        <asp:ListItem>NM</asp:ListItem>
        <asp:ListItem>NY</asp:ListItem>
        <asp:ListItem>NC</asp:ListItem>
        <asp:ListItem>ND</asp:ListItem>
        <asp:ListItem>OH</asp:ListItem>
        <asp:ListItem>OK</asp:ListItem>
        <asp:ListItem>OR</asp:ListItem>
        <asp:ListItem>PA</asp:ListItem>
        <asp:ListItem>RI</asp:ListItem>
        <asp:ListItem>SC</asp:ListItem>
        <asp:ListItem>SD</asp:ListItem>
        <asp:ListItem>TN</asp:ListItem>
        <asp:ListItem>TX</asp:ListItem>
        <asp:ListItem>UT</asp:ListItem>
        <asp:ListItem>VT</asp:ListItem>
        <asp:ListItem>VA</asp:ListItem>
        <asp:ListItem>WA</asp:ListItem>
        <asp:ListItem>WV</asp:ListItem>
        <asp:ListItem>WI</asp:ListItem>
        <asp:ListItem>WY</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Zip: "></asp:Label>
    <asp:TextBox ID="txtZip" runat="server" Width="72px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" Width="215px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Confirm password: "></asp:Label>
    <asp:TextBox ID="txtConfirmPW" runat="server" TextMode="Password"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Button ID="btnSubmit" runat="server" Height="48px" Text="Submit" Width="96px" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset Form" />
    <br />
    <br />
</asp:Content>



