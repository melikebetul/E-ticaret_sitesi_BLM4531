<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Adres.aspx.cs" Inherits="proje1.Odeme2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2> Adres Ayarları </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <div class="row">
    <div class="col-12">
       
        <div class="tab-content mt-4 mt-lg-5" id="nav-tabContent-ecommerce">
            <div class="tab-pane fade show active" id="nav-credit-card" role="tabpanel" aria-labelledby="nav-credit-card-tab">                      
                <div class="card ">
                    <div class="card-header border-light p-3">
                        <h3 class="h5 mb-0">Adres Detayları</h3> 
                    </div>
                    <div class="card-body p-4">
                        <div class="row justify-content-center">
                           
                            <div class="col-12 col-lg-10">
                                <!--Form-->
                                <div class="form-group">
                                      <label for="cartInputCity1">Ülke</label>
                                     <br />
                                    <asp:TextBox ID="txtÜlke" runat="server"  CssClass="form-control w-100" placeholder ="Ülke"></asp:TextBox>

                                    
                                </div> 
                                <div class="form-group mb-4">
                                    <label for="cartInputCity1">Şehir</label>
                                     <div>
                                   <asp:TextBox ID="txtSehir" runat="server"  CssClass="form-control w-100" placeholder ="Şehir"></asp:TextBox>
                                </div>
<div class="form-group mb-4">
                                    <label for="cartInputAdress1">Adres</label>
                                     <br />
                                    <asp:TextBox ID="txtAdres" runat="server"  CssClass="form-control w-100" placeholder ="Adres" ></asp:TextBox>
                                         
                                </div>
<div class="form-group mb-4">
                                    <label for="cartInputZip1">Posta Kodu</label>
                                       <br />
                                     <asp:TextBox ID="txtPostaKodu" runat="server"  CssClass="form-control w-100" placeholder ="Posta Kodu" ></asp:TextBox>
                                         
                                </div>
                                <!-- End of Form -->
                            <div class="form-group mb-4">
                                    <label for="cartInputPhone1">Telefon Numarası</label><br />
                                       <div class="form-group">
                                    <asp:TextBox ID="txtNumara" runat="server"  CssClass="form-control w-100" placeholder ="Telefon"></asp:TextBox>
                                         </div>
                           
                            </div>
                           <asp:Label ID="lblMail" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
                 <button class="btn  btn-primary" ><a href="Sepet.aspx">Sepete Geri Dön </a></button>
                 <asp:Button ID="Button1" runat="server" CssClass="btn-reddit" Text="Adresi Kaydet" OnClick="Button1_Click" />
                <button class="btn  btn-primary" style="float:right"><a href="Odeme.aspx">Ödemeye Geç </a></button>
                       
                </div>    
            </div>
            
           
        </div>
    </div>
</asp:Content>
