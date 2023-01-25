<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="proje1.Yönetim.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal İşlemler Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" runat="server">
                    
                    <div class="form-group">
                      <label for="exampleInputFiyat">Baslik</label>
                      <asp:TextBox ID="txtBaslik" runat="server"   CssClass="form-control" placeholder="Başlık"> </asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleTextarea1">Özet</label>
                 
                        <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet"> </asp:TextBox>
                     
                    </div>
                      <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama..."> </asp:TextBox>
                    </div>

                    
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass =" btn btn-gradient-primary m-2" OnClick="Button1_Click" />
                  </div>
                </div>
              </div>
</asp:Content>
