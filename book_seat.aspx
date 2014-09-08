<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book_seat.aspx.cs" Inherits="book_seat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="container">
<h1>Book Seats</h1>
<div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div>
    <br /><br />
<table cellspacing="10px" cellpadding="10px" style="margin-left: 30px">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">No of Tickets</h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" 
                class="feild" onblur="dehover(this)" AutoPostBack="True" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
    </tr>
    
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Total Fare<h2></h2></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" 
                class="feild" onblur="dehover(this)" ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Submit " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    
    <tr>
        <td colspan="2"><asp:Label ID="Label1" runat="server" CssClass="correct" 
                Visible="False"></asp:Label>  </td>
    </tr>
    <tr>
        <td><asp:Button ID="Button2" runat="server" Text=" Proceed to Payment " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button2_Click" 
        Visible="False" />
</td>
    </tr>
    
</table>
<br /><br />

    
    
</div>
</div>
</asp:Content>

