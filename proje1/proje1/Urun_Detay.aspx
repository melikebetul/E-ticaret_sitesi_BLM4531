<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Urun_Detay.aspx.cs" Inherits="proje1.Urun_Detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container pb-5">
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="lblresim" runat="server" Text=""></asp:Label>
                <img src="images/lblresim" class="img-fluid rounded">
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <h1><asp:Label ID="lblBaslik" runat="server" Text=""></asp:Label></h1>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-12">
                         <div id="description">
                             <asp:Label ID="lblDetay" runat="server" Text=""></asp:Label>
                         </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-12">
                        <h4 id="product-price"><asp:Label ID="lblFiyat" runat="server" Text=""></asp:Label> ₺ </h4>
                    </div>
                </div> 
                <div class="row mt-2">
                    <div class="col-md-12"> 
                        <asp:Button ID="Button1" runat="server" Text="Sepete Ekle" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
