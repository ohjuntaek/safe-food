<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>안전 음식 홈페이지</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
							</div>
							<form class="user" action="/signup" method="post" id="signupfrm">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="id" placeholder="Id">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											name="pass" placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										name="address" placeholder="Address">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="name" placeholder="Name">
									</div>
									<div class="col-sm-6">
										<input type="tel" class="form-control form-control-user"
											name="tel" placeholder="Tel">
									</div>
								</div>
								<div class="form-group">
									<fieldset>
										<legend style="font-size: small">알레르기</legend>
										<input type="checkbox" name="allergy" value="대두"> 대두 <input
											type="checkbox" name="allergy" value="땅콩"> 땅콩 <input
											type="checkbox" name="allergy" value="우유"> 우유 <input
											type="checkbox" name="allergy" value="게"> 게 <br>
										<input type="checkbox" name="allergy" value="새우"> 새우 <input
											type="checkbox" name="allergy" value="참치"> 참치 <input
											type="checkbox" name="allergy" value="연어"> 연어 <input
											type="checkbox" name="allergy" value="쑥"> 쑥 <br>
										<input type="checkbox" name="allergy" value="소고기"> 소고기
										<input type="checkbox" name="allergy" value="닭고기"> 닭고기
										<input type="checkbox" name="allergy" value="돼지고기">
										돼지고기 <br> <input type="checkbox" name="allergy"
											value="복숭아"> 복숭아 <input type="checkbox"
											name="allergy" value="민들레"> 민들레 <input
											type="checkbox" name="allergy" value="계란흰자"> 계란흰자
									</fieldset>
								</div>

								<input type="submit" class="btn btn-primary btn-user btn-block" value="Register Account">
									
								<hr>
								<a href="index.html" class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> Register with Google
								</a> <a href="index.html"
									class="btn btn-facebook btn-user btn-block"> <i
									class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="login.html">Already have an account?
									Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>
