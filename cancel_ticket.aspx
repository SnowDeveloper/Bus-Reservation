<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cancel_ticket.aspx.cs" Inherits="cancel_ticket" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Cancel Ticket</h1>
<div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div>
    <br /><br />
    <table style="margin-left: 30px" width="500px">
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Enter Ticket Number</h2></td>
            <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">No of Seats</h2></td>
            <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
            
        </tr>
        
        <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Confirm Cancellation " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    
    <tr>
        <td colspan="2"><asp:Label ID="Label1" runat="server" CssClass="correct" Visible="False"></asp:Label></td>
    </tr>
        
    </table>
    <br />
    
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</div>
</asp:Content>

