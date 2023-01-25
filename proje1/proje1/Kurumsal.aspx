<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="proje1.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>AHŞAP MARKET HAKKINDA </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT * FROM tblKurumsal"></asp:SqlDataSource>
          <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
              <ItemTemplate>
                 <h2 style="text-align: center"> <%# Eval("Ozet") %></h2>
                 <br /> <br />
				<div class="col-md-4" style="text-align: center"><%# Eval("Detay") %></div>
			 </ItemTemplate>
         </asp:Repeater>
</asp:Content>
