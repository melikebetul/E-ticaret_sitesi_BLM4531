<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDüzenleSecilen.aspx.cs" Inherits="proje1.Yönetim.BlogDüzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 class="page-title">Blog Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="card">
                <div class="card-body">
                  
                 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                      <div class="form-group">
                         <asp:Button ID="Button4" runat="server" Text="Güncellenecek Veriyi Yükle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button3_Click"/>
                    
                    </div>
                    <div class="form-group">
                       
                      <label for="exampleInputName1">Başlık</label>
                       <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"> </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputFiyat">Özet</label>
                      <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet"> </asp:TextBox>
                    </div>
                     <div class="form-group">
                      <label for="exampleInputTime">Kategori</label>
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                      
                    </div>
                     <div class="form-group">
                      <label>Blog Fotoğrafı Ekle</label>
                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control file-upload-info"/>
                         <asp:Button ID="Button2" runat="server" Text="Ekle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button2_Click"/>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Blog Detay</label>
                 
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog..."> </asp:TextBox>
                        <asp:Label ID="lbltarih" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                      <br />
                     
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass =" btn btn-gradient-primary m-2" OnClick="Button1_Click"/>
                 
                      
                 
                     
                </div>
              </div>
            
</asp:Content>
