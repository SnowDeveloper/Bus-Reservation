<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Feedback</h1>
<div id="heading">Please share your experience with us.</div>
<table cellspacing="10px" cellpadding="10px" style="margin-left: 40px;">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name</h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Ticket Number</h2></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Email Id<h2></h2></td>
        <td><asp:TextBox ID="TextBox3" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Rating</h2></h2></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="215px" 
                onfocus="hover(this)" class="feild" onblur="dehover(this)">
                <asp:ListItem>Very Good</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Not bad</asp:ListItem>
                <asp:ListItem>Poor</asp:ListItem>
                <asp:ListItem>Very bad</asp:ListItem>
            </asp:DropDownList>
                                    </td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Message</h2></td>
        <td><asp:TextBox ID="TextBox4" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    
    <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Submit " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    
    <tr>
        <td colspan="2"> <asp:Label ID="Label1" runat="server" Text="Label" 
                CssClass="correct" Visible="False"></asp:Label></td>           
    </tr>
    <tr>
        <td colspan="2"><asp:Label ID="Label2" runat="server" Text="Label" CssClass="error" 
                Visible="False"></asp:Label></td>            
    </tr>
</table>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</div>

</asp:Content>

