<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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


<style type="text/css">
#nutritionfacts {
	width: 244px;
}

#nutritionfacts td {
	color: black;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
	font-size: 8pt;
	padding: 0;
}

#nutritionfacts td.header {
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
	font-size: 28px;
	white-space: nowrap;
}

#nutritionfacts div.label {
	float: left;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
}

#nutritionfacts div.serving {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 8pt;
	text-align: center;
}

#nutritionfacts div.weight {
	display: inline;
	font-family: Arial, Helvetica, sans-serif;
	padding-left: 1px;
}

#nutritionfacts div.dv {
	display: inline;
	float: right;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
}

#nutritionfacts table.vitamins td {
	font-family: Arial, Helvetica, sans-serif;
	white-space: nowrap;
	width: 33%;
}

#nutritionfacts div.line {
	border-top: 1px solid black;
}

#nutritionfacts div.labellight {
	float: left;
	font-family: Arial, Helvetica, sans-serif;
}

#nutritionfacts .highlighted {
	border: 1px dotted grey;
	padding: 2px;
}
</style>


</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@include file="/WEB-INF/view/sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@include file="/WEB-INF/view/topbar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Portfolio Item Heading -->
					<h1 class="my-4">
						[식품 상세 정보] <small>${list.name }</small>
					</h1>

					<!-- Portfolio Item Row -->
					<div class="row" style="display: flow-root;">
						<div class="col-md-4" style="float: left;">
							<img class="img-fluid" src="/${list.img }" alt="${list.name }">
						</div>
						<div id="nutritionfacts" style="float: right;">
							<table cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td align="center" class="header">Nutrition Facts</td>
									</tr>
									<tr>
										<td><div class="serving">
												Per <span class="highlighted">${list.supportpereat}g</span>
												Serving Size
											</div></td>
									</tr>
									<tr style="height: 7px">
										<td bgcolor="#000000"></td>
									</tr>
									<tr>
										<td style="font-size: 7pt"><div class="line">Amount
												Per Serving</div></td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Calories
													<div class="weight">${list.calory}</div>
												</div>
												<!-- <div style="padding-top: 1px; float: right;"
														class="labellight">
														Calories from Fat
														<div class="weight">56</div>
													</div> -->
											</div>
										</td>
									</tr>
									<tr>
										<td><div class="line">
												<div class="dvlabel">
													% Daily Value<sup>*</sup>
												</div>
											</div></td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Total Fat
													<div class="weight">${list.fat}g</div>
												</div>
												<div class="dv">
													<!-- 10% -->
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="indent">
											<div class="line">
												<div class="labellight">
													Saturated Fat
													<div class="weight">${list.fattyacid}g</div>
												</div>
												<div class="dv">
													<!-- 17% -->
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="indent">
											<div class="line">
												<div class="labellight">
													<i>Trans</i> Fat
													<div class="weight">${list.transfat}g</div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Cholesterol
													<div class="weight">${list.chole}mg</div>
												</div>
												<div class="dv">
													<!-- 7% -->
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Sodium
													<div class="weight">${list.natrium}mg</div>
												</div>
												<div class="dv">
													<!-- 26% -->
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Total Carbohydrates
													<div class="weight">${list.carbo}g</div>
												</div>
												<div class="dv">
													<!-- 11% -->
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="indent">
											<div class="line">
												<div class="labellight">
													Sugars
													<div class="weight">${list.sugar}g</div>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="line">
												<div class="label">
													Protein
													<div class="weight">${list.protein}g</div>
												</div>
											</div>
										</td>
									</tr>
									<tr style="height: 7px">
										<td bgcolor="#000000"></td>
									</tr>
									<tr>
										<td>
											<table cellspacing="0" cellpadding="0" border="0"
												class="vitamins">
												<c:set var="llm"
													value="${list.material.replaceAll( '\\\(.*?\\\)', ' ')}"></c:set>
												<c:set var="llm"
													value="${llm.replaceAll( '\\\{.*?\\\}', ' ')}"></c:set>
												<c:set var="llm"
													value="${llm.replaceAll( '\\\[.*?\\\]', ' ')}"></c:set>
												<c:set var="lm" value="${fn:split(llm, ',') }"></c:set>
												<tbody>
													<c:forEach var="i" items="${lm}" step="2" varStatus="s">
														<tr>
															<td align="center">•</td>
															<td class="col-md-5">${lm[s.index]}</td>
															<td>•</td>
															<td class="col-md-5">${lm[s.index+1]}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td><div class="line">
												<div class="labellight">
													* Based on a regular <a href="#">2000 calorie diet</a> <br>
													<br> <i>Nutritional details are an estimate and
														should only be used as a guide for approximation.</i>
												</div>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>


					<!-- Related Projects Row -->
					<h3 class="my-4">Related Projects</h3>

					<div class="row">

						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid"
								src="http://placehold.it/500x300" alt="">
							</a>
						</div>

						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid"
								src="http://placehold.it/500x300" alt="">
							</a>
						</div>

						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid"
								src="http://placehold.it/500x300" alt="">
							</a>
						</div>

						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid"
								src="http://placehold.it/500x300" alt="">
							</a>
						</div>

					</div>
					<!-- /.row -->

				</div>
				<!-- /.container -->

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
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/js/sb-admin-2.min.js"></script>



</body>

</html>
