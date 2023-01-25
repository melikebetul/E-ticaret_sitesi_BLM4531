<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="proje1.Yönetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="card">
                <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputFiyat">E-Mail</label>
                      <asp:TextBox ID="txtMail" runat="server"   CssClass="form-control" placeholder="E-Mail"> </asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputFiyat">Tlf</label>
                      <asp:TextBox ID="txtTlf" runat="server"   CssClass="form-control" placeholder="Telefon"> </asp:TextBox>
                    </div>
                      
                      <div class="form-group">
                      <label for="exampleInputFiyat">Adres</label>
                      <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Adres"> </asp:TextBox>
                    </div>

                       <div class="form-group">
                      <label for="exampleInputFiyat">Twiter</label>
                      <asp:TextBox ID="txtTwitter" runat="server"   CssClass="form-control" placeholder="Twitter Adresi"> </asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputFiyat">Youtube</label>
                      <asp:TextBox ID="txtYoutube" runat="server"   CssClass="form-control" placeholder="Youtube adresi"> </asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputFiyat">Instagram</label>
                      <asp:TextBox ID="txtInstagram" runat="server"  CssClass="form-control" placeholder="Instagram adresi"> </asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputFiyat">Facebook</label>
                      <asp:TextBox ID="txtFacebook" runat="server"   CssClass="form-control" placeholder="Facebook adresi"> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Logo</label>
                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                     <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button2_Click" />
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>
                 
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama..."> </asp:TextBox>
                        <asp:Label ID="lbltarih" runat="server" Text=""></asp:Label>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass =" btn btn-gradient-primary m-2" OnClick="Button1_Click" />
                </div>
              </div>
</asp:Content>
