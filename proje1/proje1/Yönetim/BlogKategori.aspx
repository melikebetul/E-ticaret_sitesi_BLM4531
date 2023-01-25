<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="proje1.Yönetim.BlogKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 class="page-title">Blog Kategori Ekle Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                       <asp:TextBox ID="txtkategori" runat="server" CssClass="form-control" placeholder="Kategori Adı"> </asp:TextBox>
                    
                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass =" btn btn-gradient-primary m-2" OnClick="Button1_Click"/>
                  </div></div>
                </div>
              </div>
            

</asp:Content>
