<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="ÜrünDüzenleSecilen.aspx.cs" Inherits="proje1.Yönetim.ÜrünDüzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title"> Ürün Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
<div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" runat="server">
                      <div class="form-group">
                       <asp:Button ID="Button3" runat="server" Text="Güncellenecek Veriyi Getir" CssClass =" btn btn-gradient-primary m-2" OnClick="Button3_Click"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Ürün Adı</label>
                       <asp:TextBox ID="txtad" runat="server" CssClass="form-control" placeholder="Ürün Adı"> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputFiyat">Fiyat</label>
                      <asp:TextBox ID="txtfiyat" runat="server" CssClass="form-control" placeholder="Fiyat"> </asp:TextBox>
                    </div>
                     <div class="form-group">
                      <label for="exampleInputTime">Hazırlanma Süresi</label>
                      <asp:TextBox ID="txtsüre" runat="server" CssClass="form-control" placeholder="Hazırlanma Süresi"> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Ürün Fotoğrafı Ekle</label>
                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control file-upload-info"/>
                         <asp:Button ID="Button2" runat="server" Text="Ekle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button2_Click"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Ürün Detay</label>
                 
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Ürün hakkında detaylı bilgi..."> </asp:TextBox>
                    </div>
                      <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                      <br />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button1_Click"/>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>
