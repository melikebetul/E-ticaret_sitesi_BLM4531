<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Login_User.aspx.cs" Inherits="proje1.Login_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Giriş Yap </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	
	
    <div class="limiter">

			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Login_v1/images/img-01.png" alt="IMG">
				</div>

				<div class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Kullanıcı Girişi
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı adı gerekli">
						
						<asp:TextBox ID="txtMail" class="input100" runat="server"  placeholder="Mail Adresi"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Şifre gerekli">
				
						<asp:TextBox ID="txtSifre" class="input100" runat="server"  placeholder="Şifre"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" Text="Giriş" class="login100-form-btn"  OnClick="Button1_Click" />
					</div>
					
					<div class="text-center p-t-12">
						<span class="txt1">
							Kullanıcı Adı ve Şifre
						</span>
						<a class="txt2" href="#">
							Unuttum
						</a>
					</div>
					<p>
						<asp:Label ID="Label1" runat="server" Text=""></asp:Label> </p>
					<div class="text-center p-t-136">
						<a class="txt2" href="Signin_User.aspx">
						Yeni Hesap Oluştur
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
		
	</div>
	<!--===============================================================================================-->	
	<script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
    </script>
<!--===============================================================================================-->
	<script src="Login_v1/js/main.js"></script>
		
</asp:Content>
