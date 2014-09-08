<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="Admin_offers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainAdminContent" Runat="Server">

<div id="content" class="box">
        <h1>Offers</h1>
			<!-- 2 columns -->
			<div class="col50">
			<h3 class="tit">Add New Offers</h3>
				<p class="t-justify">
			    <table>
			        <tr>
			            <td>Offer Name</td>
			            <td><asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			        </tr>
			        <tr>
			            <td>Source</td>
			            <td><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			        </tr>
			        <tr>
			            <td>Destination</td>
			            <td><asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			        </tr>
			        <tr>
			            <td>Price ( Rs )</td>
			            <td><asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="200px"></asp:TextBox></td>
			        </tr>
			        <tr>
			        
			        <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Add New Offers" 
                            BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                            Height="35px" Width="312px" onclick="Button1_Click" /></td>                        
			    </tr>
			    </table>
			<br />
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <br /><br /><br />
				
				</p>
				
			</div> <!-- /col50 -->

			<div class="col50 f-right">
			<h3 class="tit">See Existing Offers</h3>
				<p class="t-justify">
				        
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="451px">
                        <Columns>
                            <asp:TemplateField HeaderText="Offer Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("offer_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("offer_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Source">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("source") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("source") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Destination">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("destination") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("destination") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price ( Rs )">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
				</p>
				
			</div> <!-- /col50 -->

			<div class="fix"></div>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
<br />
		</div> <!-- /content -->
</asp:Content>

