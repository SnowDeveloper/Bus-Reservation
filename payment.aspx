<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="container">

<h1>Please choose any Payment Method</h1>

<table cellspacing="10px" cellpadding="10px">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Address</h2></td>
        <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="194px" 
                onfocus="hover(this)" class="feild" onblur="dehover(this)" Height="62px" 
                ontextchanged="TextBox2_TextChanged"></asp:TextBox></td></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Bank Account 
            Number</h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" 
                class="feild" onblur="dehover(this)" ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>            
    </tr>
</table>
<br />
    <asp:Label ID="Label1" runat="server" BorderStyle="None"></asp:Label>
    <asp:Button ID="Button1" runat="server" BackColor="#CCCCFF" Font-Bold="True" 
        Font-Names="Cambria" Font-Size="Large" ForeColor="#3333FF" 
        onclick="Button1_Click" Text="Print Ticket" />
    <br /><br /><br />
</div>

</asp:Content>

