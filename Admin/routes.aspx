<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="routes.aspx.cs" Inherits="Admin_routes" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainAdminContent" Runat="Server">
<div id="content" class="box">

<h1>Routes</h1>
<br />
			<div class="col33">
			<h3 class="tit">Add New Route</h3>
				<p class="t-justify">
				 <table width="280px" cellpadding="10px" cellspacing="20px">
				        <tr>
				            <td>Source</td>
				            <td><asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
				            <td>Destination</td>
				            <td><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
				            <td>Price/Cost</td>
				            <td><asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
			        
			        <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add New Route" 
                            BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                            Height="35px" Width="302px" onclick="Button1_Click" /></td>                        
			    </tr>
				    </table>

				</p>
                        <p class="t-justify">
				            <asp:Label ID="Label2" runat="server"></asp:Label>

				</p>
				
			</div> <!-- /col33 -->

			<div class="col33 center">
			<h3 class="tit">Edit Route</h3>
				<p class="t-justify">
				<table width="280px" cellpadding="10px" cellspacing="20px">
				        <tr>
				            <td>Route Id</td>
				            <td><asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="200px" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    AutoPostBack="True"></asp:DropDownList>          
                            </td>                                                        
				        </tr>
				        <tr>
				            <td>Source</td>
				            <td><asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
				            <td>Destination</td>
				            <td><asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
				            <td>Price</td>
				            <td><asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
				        </tr>
				        <tr>
				            <td colspan="2">
                                <asp:Button ID="Button2" runat="server" Text="Save Route" 
                                BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                Height="35px" Width="302px" onclick="Button2_Click" />
                            </td> 
                        </tr>    
				    </table>

				</p>
                <p class="t-justify">
				    <asp:Label ID="Label1" runat="server"></asp:Label>

				</p>
				
				
			</div> 

    <!-- /col33 -->

			<div class="col33">
			<h3 class="tit">Delete Route</h3>
				<p class="t-justify">
				    <table width="280px" cellpadding="10px" cellspacing="20px">
				        <tr>
				            <td>Route Id</td>
				            <td><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    Height="26px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                                    Width="200px"></asp:DropDownList></td>
				        </tr>
				    </table>
				</p>
                <p class="t-justify">
				    <asp:Label ID="Label3" runat="server"></asp:Label>
				</p>
				
			</div> 

</div>
</asp:Content>

