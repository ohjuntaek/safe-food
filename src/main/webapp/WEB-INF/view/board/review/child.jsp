<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>안전 음식 홈페이지</title>

<!-- Custom fonts for this template-->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
	
<!-- Custom styles for this template-->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">
<script type="text/javascript">
        function setParentText(foodcode, foodname){
             opener.document.getElementById("pInput").value = foodcode;
             opener.document.getElementById("pInputLabel").value = foodname;
             self.close();
        }
</script>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">식품 정보</h1>
					</div>

					<div class="row">
						<c:forEach var="j" begin="0" end="3">
							<div class="col-lg-3">
								<!-- Basic Card Example -->
								<!-- 0 1 2 3 -->
								<!-- 4 5 6 7 -->
								<!-- 8 9 10 11 -->
								<!-- 12 13 14 15 -->
								<!-- 16 17 18 19 -->
								<c:forEach var="i" items="${list}" begin="${0+j}" end="${16+j}" step="4">
									<div class="card shadow mb-4">
										<div class="card-header py-3">
											<h6 class="m-0 font-weight-bold text-primary">${i.maker} ${i.name}</h6>
										</div>
										<div class="card-body">
											<img class="card-img-top" src="${i.img}" />
											<h5 class="card-title">${i.name }</h5>
											<h7 class="card-title">${i.maker }</h7>
											<p class="card-text">
												1회 제공량 : ${i.supportpereat} <br>
												칼로리 : ${i.calory}
											</p>
											<a href="/foodlist/${i.code}" class="btn btn-primary">상세 보기</a> 
											<button class="btn btn-primary" onclick="setParentText(${i.code}, '${i.name}')">골라골라</button>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</div>

				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	
	

</body>

</html>
