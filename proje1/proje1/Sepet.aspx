<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="proje1.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Sepetiniz
    </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
    <div class="col-12 col-md-8">
        <div class="card  p-4">
            <h3 class="h5 mb-4">Sepetiniz </h3>
            

            <div class="card-body p-0">
                <ul class="list-group list-group-sm mt-3">
                    <li class="list-group-item d-flex"> <span> <asp:Label ID="lblUrunAd2" runat="server" Text="Baston"></asp:Label></span> 
                        <span class="ml-auto"> <asp:Label ID="lblUrunFiyat" runat="server" Text="300"></asp:Label></span> 

                    </li>
               
                    <li class="list-group-item d-flex font-weight-bold rounded-bottom h5"> <span>Total</span> <span class="ml-auto"> <asp:Label ID="lblSum" runat="server" Text="300"></asp:Label></span></li> 
                </ul>
                <a class="btn btn-block btn-primary mt-4 mb-3" href="Adres.aspx">Sepeti Onayla</a> 
                <small> <a href="#">Terms and Conditions</a> kabul etmiş olursunuz.</small>
            </div>
        </div>
    </div>
</div>
</asp:Content>
