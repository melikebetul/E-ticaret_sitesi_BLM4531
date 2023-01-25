<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="proje1.Galeri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>AHŞAP MARKET GALERİ </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="section-top-border">
				<h3>Galerimiz</h3>
		 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT * FROM tblGaleri"></asp:SqlDataSource>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                               
				<div class="row gallery-item">
					<div class="col-md-4">
						<a href="images/<%# Eval("Resim") %>" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(images/<%# Eval("Resim") %>);"></div>
						</a>
					</div>
					
                            </ItemTemplate>
                        </asp:Repeater>
					
				</div>
			</div>
</asp:Content>
