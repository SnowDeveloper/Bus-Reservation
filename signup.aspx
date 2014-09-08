<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="container">
<h1>Sign Up Form</h1>
<div id="register_left">

<table cellspacing="10px" cellpadding="10px" style="margin-left: 20px; margin-bottom: 30px;">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name</h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Email ID</h2></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Username</h2></td>
        <td><asp:TextBox ID="TextBox3" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Password</h2></td>
        <td><asp:TextBox ID="TextBox4" runat="server" Width="191px" onfocus="hover(this)" 
                class="feild" onblur="dehover(this)" TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Confirm Password</h2></td>
        <td><asp:TextBox ID="TextBox5" runat="server" Width="191px" onfocus="hover(this)" 
                class="feild" onblur="dehover(this)" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" BorderStyle="None" 
                ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                ErrorMessage="Passwords do not match!"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Address</h2></td>
        <td><asp:TextBox ID="TextBox6" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>
    </tr>
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Phone No</h2></td>
        <td><asp:TextBox ID="TextBox7" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox>
            
        </td>
    </tr>  
    <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Register Now " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>  
    <tr>
        <td colspan="2"><asp:Label ID="Label1" runat="server" CssClass="correct" 
                Visible="False"></asp:Label></td>
    </tr>
    <tr>
        <td colspan="2"><asp:Button ID="Button2" runat="server" Text=" Login " Height="37px" 
                Width="388px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button2_Click" 
                Visible="False" /></td>
    </tr>
</table>
    
<br /><br />
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<div id="register_right"></div>

</div>
</div>

</asp:Content>

