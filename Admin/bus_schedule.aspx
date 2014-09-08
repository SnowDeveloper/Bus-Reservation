<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="bus_schedule.aspx.cs" Inherits="Admin_add_bus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 370px;
        }
        .style2
        {
            width: 77px;
        }
        .style4
        {
            width: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainAdminContent" Runat="Server">
    <!-- Content (Right Column) -->
		<div id="content" class="box">
        <h1>Bus Schedule</h1>
			<!-- 2 columns -->
			<div class="col50">
			<h3 class="tit">Add New Bus Schedule</h3>
				<p class="t-justify">
			
			<table cellpadding="5px" cellspacing="20px" class="style1">
			    <tr>
			        <td class="style2">Bus Id</td>
			        <td class="style4"><asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="202px"> </asp:DropDownList></td>   
			    </tr>
			    <tr>
			        <td class="style2">Bus Number</td>
			        <td class="style4"><asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="200px"></asp:TextBox></td>                        
			    </tr>
			    <tr>
			        <td class="style2">Route Id</td>
			        <td class="style4"><asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="202px" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged"> </asp:DropDownList></td>
			    </tr>
			    <tr>
			        <td class="style2">Departure Time</td>
			        <td class="style4"><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="197px"></asp:TextBox></td>
			    </tr>
			    <tr>
			        <td class="style2">Arrival Time</td>
			        <td class="style4"><asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			    </tr>
			    <tr>
			        <td class="style2">Journey Date</td>
			        <td class="style4"><asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			    </tr>
			    <tr>
			        <td class="style2">Avalibility</td>
			        <td class="style4"><asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			    </tr>
			    <tr>
			        
			        <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add New Schedule" 
                            BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                            Height="35px" Width="312px" onclick="Button1_Click" /></td>                        
			    </tr>
			</table>
				<br /><br />
				            <asp:Label ID="Label2" runat="server"></asp:Label>
				</p>
				
			</div> <!-- /col50 -->

			<div class="col50 f-right">
			<h3 class="tit">Delete Bus Schedule</h3>
				<p class="t-justify">
				        <table width="300px" cellpadding="5px" cellspacing="20px">
				        <tr>
				            <td>Bus Id</td>
				            <td><asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="200px" 
                                    AutoPostBack="True" onselectedindexchanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList></td>
				        </tr>
				        </table>
				        <br /> <br />
				        <asp:Label ID="Label3" runat="server"></asp:Label>
				</p>
				
			</div> <!-- /col50 -->

			<div class="fix"></div>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
<br />
		</div> <!-- /content -->
</asp:Content>

