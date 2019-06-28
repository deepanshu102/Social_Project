﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="donee_histroy.aspx.cs" Inherits="Social.donee_histroy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="overlay"></div>
			<div class="container">
				<div class="banner_content text-center">
					<h2>Make Donation</h2>
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="donation.html">Donation</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!--================ Start Make Donation Area =================-->
	<section class="make_donation section_gap">
		<div class="container">
			<div class="row justify-content-start section-title-wrap">
				<div class="col-lg-12">
					<h1>Make a Donation Today</h1>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				</div>
			</div>

			<div class="donate_now_wrapper">
				<form>
					<div class="row">
                        <div class="col-lg-3">

                        </div>
                        <div class="col-lg-6">
                            <asp:gridview ID="history" DataKeyNames="item_id" runat="server"  BackColor="White"  AutoGenerateColumns="false" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>

                                     <asp:TemplateField HeaderText="Doner Name">
                        <ItemTemplate>
                            <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                    
                                     <asp:TemplateField HeaderText="Doner address">
                        <ItemTemplate>
                            <asp:Label ID="name" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Donated Item">
                        <ItemTemplate>
                            <asp:Label ID="item_name" runat="server" Text='<%#Eval("item_name") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                     <asp:TemplateField HeaderText="quantity">
                        <ItemTemplate>
                            <asp:Label ID="qty" runat="server" Text='<%#Eval("qty") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Donation reason">
                        <ItemTemplate>
                            <asp:Label ID="reason" runat="server" Text='<%#Eval("reason") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Donee Date">
                        <ItemTemplate>
                            <asp:Label ID="d_date" runat="server" Text='<%#Eval("g_date") %>'></asp:Label>
                            </ItemTemplate>
                                         </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Donated Item">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Width="100px" Height="100px" />
                            </ItemTemplate>
                                         </asp:TemplateField>



                                </Columns>


                               
                            </asp:gridview>
                        </div>
                        </div>
                    </form>
                    </div>
            </div>
        </section>

</asp:Content>
