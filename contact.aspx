<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 378px;
        }
        .style2
        {
            width: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Contact Us</h1>
<div id="contact_form">
<table cellpadding="10px" cellspacing="10px" width="300px">
    <tr>
        <td class="style1"><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name:</h2></td>
        <td class="style2"><asp:TextBox ID="TextBox1" runat="server" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    
    <tr>
        <td class="style1"><h2 style="color: #0099FF; font-weight: bold; font-size: large">Email Id:</h2></td>
        <td class="style2"><asp:TextBox ID="TextBox2" runat="server" Width="190px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    
    <tr>
        <td class="style1"><h2 style="color: #0099FF; font-weight: bold; font-size: large">Message:</h2></td>
        <td class="style2"><asp:TextBox ID="TextBox3" runat="server" Height="92px" TextMode="MultiLine" 
                Width="190px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
    </tr>
    
    <tr>
    <td></td>
        <td class="2"><asp:Button ID="Button1" runat="server" Text=" Submit " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>            
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" CssClass="correct" Visible="False"></asp:Label>
        </td>
        
    </tr>
    <tr>
        <td colspan="2"><asp:Label ID="Label2" runat="server" CssClass="error" 
                Visible="False"></asp:Label></td>            
    </tr>
</table>
<br /><br />
<h1>You can also contact us by the details given below.</h1>
<br /><br/ />
<div id="cont_addr">36 1 / 1 F / 3 Tangra Road Kolkata 700015</div><br /><br /><br /><br />
<div id="cont_mail">admin@sgtravels.com</div><br /><br /><br /><br />
<div id="cont_tele">(033) 23299267</div>
<br /><br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
</div>
<div id="contact_right">
<div id="con_image"></div>

</div>
</div>
</div>
</div>
</asp:Content>

