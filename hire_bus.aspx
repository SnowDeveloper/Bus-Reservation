<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hire_bus.aspx.cs" Inherits="hire_bus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Hire Bus</h1>
<div id="contact_form1">
<table cellspacing="10px" cellpadding="10px">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name</h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Phone</h2></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Email Id</h2></td>
        <td><asp:TextBox ID="TextBox3" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"> </asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Address</h2></td>
        <td><asp:TextBox ID="TextBox4" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Type</h2></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="215px" 
                onfocus="hover(this)" class="feild" onblur="dehover(this)">
                <asp:ListItem>Bus</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
            </asp:DropDownList>
                                    </td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Date</h2></td>
        <td><asp:TextBox ID="TextBox5" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Time</h2></td>
        <td><asp:TextBox ID="TextBox6" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Bus Type</h2></td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="215px" 
                onfocus="hover(this)" class="feild" onblur="dehover(this)">
                <asp:ListItem>Ac</asp:ListItem>
                <asp:ListItem>Non Ac</asp:ListItem>
                <asp:ListItem>Sleeper</asp:ListItem>
                <asp:ListItem>Non Sleeper</asp:ListItem>
            </asp:DropDownList>
                                    </td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Source</h2></td>
        <td><asp:TextBox ID="TextBox7" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Destination</h2></td>
        <td><asp:TextBox ID="TextBox8" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Purpose</h2></td>
        <td><asp:TextBox ID="TextBox9" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Submit " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    <tr>
    <td colspan="2"><asp:Label ID="Label1" runat="server" CssClass="correct" 
            Visible="False"></asp:Label></td>
    </tr>
    
    <tr>
        <td><asp:Label ID="Label2" runat="server" CssClass="error" Visible="False"></asp:Label></td>            
    </tr>
    
</table>
    <br />
    
</div>
<div id="hire_right"></div>
</div>
</div>
</div>
</asp:Content>

