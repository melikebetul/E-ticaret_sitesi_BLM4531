﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="proje1.SignIn" %>


<!DOCTYPE html>
<html lang="tr">
<head>
	<title>Kullanıcı Girişi</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Login_v1/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Admin Kaydet
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı adı gerekli">

						<asp:TextBox ID="txtUserName" class="input100" runat="server"  placeholder="Kullanıcı Adı"></asp:TextBox>
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

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı adı gerekli">

						<asp:TextBox ID="txtMail" class="input100" runat="server"  placeholder="Mail"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" Text="Kaydol" class="login100-form-btn" OnClick="Button1_Click" />
					</div>
					
					
					<p>
						<asp:Label ID="Label1" runat="server" Text=""></asp:Label> </p>
					
				</form>
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

</body>
</html>