<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="proje1.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>BLOG </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT * FROM tblBlog inner join tblBlogKategori on tblBlogKategori.id=tblBlog.KategoriId"></asp:SqlDataSource>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                 <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="images/<%# Eval("Resim") %>" alt="<%# Eval("Baslik") %>">
                                <a href="<%#Eval("id", "BlogDetay.aspx?id={0}") %>" class="blog_item_date">
                                    <h3><%# Eval("Tarih") %></h3>
                                </a>
                            </div>
                            <div class="blog_details">
                                <a class="d-inline-block" href="<%#Eval("id", "BlogDetay.aspx?id={0}") %>" >
                                    <h2><%# Eval("Baslik") %></h2>
                                </a>
                                <p> <%# Eval("Ozet") %>.</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"> <%# Eval("Adi") %></a></li> 
                                </ul>
                            </div>
                        </article>
                            </ItemTemplate>
                        </asp:Repeater>
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Category</h4>
                            <ul class="list cat-list">
                               
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dboAhsapMarketConnectionString%>"
          SelectCommand="SELECT Adi FROM tblBlogKategori"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                         <li>
                                    <a href="#" class="d-flex">
                                        <p><%#Eval("Adi") %></p>
                                    </a>
                                </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </aside>
                    </div>
                </div>
             </div>
</asp:Content>
