<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="proje1.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Blog Detay </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">


          <div class="col-lg-8 posts-list">
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT * FROM tblBlog inner join tblBlogKategori on tblBlogKategori.id=tblBlog.KategoriId"></asp:SqlDataSource>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                 <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src="images/<%# Eval("Resim") %>" alt="">
                  </div>
                  <div class="blog_details">
                     <h2><%# Eval("Baslik") %>
                     </h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i><%# Eval("KategoriId") %></a></li>
                        <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                     </ul>
                     <p class="excert">
                      <%# Eval("Detay") %>
                     </p>
                  </div>
               </div>


                            </ItemTemplate>
                        </asp:Repeater>
             
             
                 
</asp:Content>
