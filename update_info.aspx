<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update_info.aspx.cs" Inherits="update_info" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Welcome! <asp:Label ID="Label1" runat="server"></asp:Label></h1>
    
    <div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div><br />
    <table cellpadding="10px" cellspacing="10px" style="margin-left: 50px;">
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name</h2></td>
            <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>                
        </tr>
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Email</h2></td>
            <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>     
        </tr>
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Username</h2></td>
            <td><asp:TextBox ID="TextBox3" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>     
        </tr>
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Password</h2></td>
            <td><asp:TextBox ID="TextBox4" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>     
        </tr>
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Adress</h2></td>
            <td><asp:TextBox ID="TextBox5" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>     
        </tr>
        <tr>
            <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Contact Number</h2></td>
            <td><asp:TextBox ID="TextBox6" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>     
        </tr>
        <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Update Info " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    <tr>
        <td colospan="2"><asp:Label ID="Label2" runat="server" CssClass="correct" 
                Visible="False"></asp:Label>            
        </td>
    </tr>
        <tr>
        <td colospan="2">
            <asp:Label ID="Label3" runat="server" CssClass="error" 
                Visible="False"></asp:Label>            
        </td>
    </tr>
    </table>
    <br /><br />
    
</div>
</div>
</asp:Content>

