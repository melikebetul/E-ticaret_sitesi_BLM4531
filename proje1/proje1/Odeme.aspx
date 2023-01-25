<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Odeme.aspx.cs" Inherits="proje1.Odeme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Odeme Ayarları </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="card">
                    <div class="card-header col-12 p-3">
                        <h3 class="h5 mb-0">Kart Detayları</h3> 
                    </div>
                    <div class="card-body p-4">
                        <div class="row justify-content-center">
                            <div class="col-12 col-md-10">
                                <div class="form-group">
                                   <label class="form-label h6" for="cardName">Kart Sahibi <span class="text-danger">*</span></label>
                                    <div class="input-group mb-4">
                                        <asp:TextBox ID="txtKartAd" runat="server"  CssClass="form-control w-100" placeholder ="Kart Adı"></asp:TextBox> </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-10">
                                <div class="form-group">
                                    <label class="form-label h6" for="cardNumberLabel">Kart Numarası <span class="text-danger">*</span></label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-credit-card"></span></span> 
                                         <asp:TextBox ID="txtKartNo" runat="server"  CssClass="form-control w-100" placeholder ="Kart Numarası"></asp:TextBox></div>
                                </div>
<div class="form-group">
                                    <label class="form-label h6" for="cardCVCLabel">CVC <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtCVC" runat="server"  CssClass="form-control w-100" placeholder ="CVC"></asp:TextBox></div>
                            </div> <div class="form-group">
                                    <label class="form-label h6" for="cardExpiryLabel">Card Expiry <span class="text-danger">*</span></label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-calendar-alt"></span></span> 
                                         <asp:TextBox ID="txtSon" runat="server"  CssClass="form-control w-100" placeholder ="Son Tarih"></asp:TextBox> </div>
                                </div>
                            
                        </div>
                    </div> 
                        </div>
      
             <button class="btn  btn-primary" ><a href="Adres.aspx">Adrese geri dön </a></button>
                <button class="btn btn-primary" style="float:right"><a href="SepetOnay.aspx">Sepeti Onayla </a></button>

</asp:Content>



