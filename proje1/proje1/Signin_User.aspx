<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Signin_User.aspx.cs" Inherits="proje1.Signin_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <h2>Kayıt Ol </h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<div >
		<div>
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Login_v1/images/img-01.png" alt="IMG">
				</div>

				<div class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Kaydol
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı adı gerekli">

						<asp:TextBox ID="txtAd" class="input100" runat="server"  placeholder="İsim"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı adı gerekli">

						<asp:TextBox ID="txtSoyad" class="input100" runat="server"  placeholder="Soyisim"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı Maili gerekli">

						<asp:TextBox ID="txtMail" class="input100" runat="server"  placeholder="Mail"></asp:TextBox>
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
						<asp:Button ID="Button1" runat="server" Text="Kaydol" class="login100-form-btn" OnClick="Button1_Click" />
					</div>
					
					<p>
						<asp:Label ID="Label1" runat="server" Text=""></asp:Label> </p>
					
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
