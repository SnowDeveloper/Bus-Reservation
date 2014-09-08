<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ad_bus.aspx.cs" Inherits="Admin_ad_bus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainAdminContent" Runat="Server">
    <!-- Content (Right Column) -->
		<div id="content" class="box">
		<h1>Add New Bus</h1>
		<br />
		<table width="350px" cellpadding="5px" cellspacing="20px">
		    <tr>
		        <td>Bus Type</td>
		        <td><asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
		    </tr>
		    <tr>
		        <td>Name</td>
		        <td><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
		    </tr>
		    <tr>
		        <td>Color</td>
		        <td><asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
		    </tr>
		    <tr>
		        <td>No Of Seats</td>
		        <td><asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
		    </tr>
		    <tr>
			        
			        <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add New Bus" 
                            BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                            Height="35px" Width="302px" onclick="Button1_Click" /></td>                        
			    </tr>
		</table>
		<br /><span><strong>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </strong></span><br /><br />
		</div>
</asp:Content>

