<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="proje1.Paketler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <h2>AHŞAP MARKET HEDİYELİK EŞYA </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>Ahşap Market
                            </span>
                            <h2>Ürünlerimiz</h2>
                        </div>
                    </div>
                </div>
        
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT id, Adi, Fiyat, Sure, Resim, Detay FROM tblUrun"></asp:SqlDataSource>
                    <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                              <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="images/<%# Eval("Resim") %>" alt="<%# Eval("Adi") %>">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    
                                    <h3><a href="#"><%# Eval("Adi") %></a></h3>
                                    <p class="dolor"><%# Eval("Fiyat") %> <span>tl </span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("Sure") %></li>
                                       
                                    </ul>
                                </div>
                                
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("id","Urun_Detay.aspx?id={0}") %>' runat="server">
                            Detay
                        </asp:HyperLink>
                   
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
</asp:Content>

