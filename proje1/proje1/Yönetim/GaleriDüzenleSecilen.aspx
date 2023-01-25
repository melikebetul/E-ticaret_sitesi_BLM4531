<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriDüzenleSecilen.aspx.cs" Inherits="proje1.Yönetim.GaleriDüzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Resim Galerisi Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" runat="server">
                      
                      
                      <h3> Galeri Resim Yükleme Alanı</h3>
                      <div class="form-group">
                      <label for="exampleInputName1">Resim Adı</label>
                          <asp:TextBox ID="txtResimAd" runat="server" CssClass="form-control" placeholder="Resim Adı..."></asp:TextBox>
                      </div>
                      
                      <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" ></asp:DropDownList>
                      </div>
                          <div class="form-group">
                      <label>Galeri Resmi Ekle</label>
                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control file-upload-info"/>
                              <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                          <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button2_Click"/>
                      <br />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass =" btn btn-gradient-primary m-2"  OnClick="Button1_Click"/>
                      <asp:Button ID="Button3" runat="server" Text="Güncellenecek Veriyi Yükle" CssClass =" btn btn-gradient-primary m-2"  OnClick="Button3_Click"/>
                   
                  </div>
                </div>
             ,
            

</asp:Content>
