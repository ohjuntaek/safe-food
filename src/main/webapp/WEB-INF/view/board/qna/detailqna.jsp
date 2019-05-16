<%@page import="org.springframework.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/vue"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>안전 음식 홈페이지</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
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
					<h1>자유게시판 상세보기</h1>
					<div id="app">
						<div v-if="errored">Error In AJAX Transport</div>
						<div v-else="errored">
							<table>
								<template v-for="qna in info">
								<tr>
									<td width="100px" align="center" colspan="1" style="border-style: groove;">제목</td>
									<td width="700px" align="center" colspan="9" style="border-style: groove;">[{{qna.qnum}}] {{qna.title }}</td>
								</tr>
								<tr>
									<td colspan="10" bgcolor="hotpink"></td>
								</tr>
								<tr>
									<td align="center" height="300px" colspan="1" style="border-style: groove;">내용</td>
									<td height="300px" colspan="9" style="border-style: groove;">{{qna.text}}</td>
								</tr>
								<tr>
									<td colspan="1" align="center" style="border-style: groove;">작성자</td>
									<td colspan="7" align="left" style="border-style: groove; padding-left: 10px;">{{qna.id }}</td>
									<td colspan="2" align="center" v-if="check(qna.id)">
										<button v-on:click="modifyqna(qna.qnum)">수 정</button>
									</td>
								</tr>
								<tr>
									<td colspan="1" align="center" style="border-style: groove;">등록일</td>
									<td colspan="7" align="left" style="border-style: groove; padding-left: 10px;">{{qna.date }}</td>
									<td colspan="2" align="center" v-if="check(qna.id)">
										<button v-on:click="deleteqna(qna.qnum)">삭 제</button>
									</td>
								</tr>
								</template>
							</table>
						</div>
					</div>
					<script type="text/javascript">
	var session = "<%=session.getAttribute("id")%>";
var app = new Vue({
	el : "#app",
	data() {
		return{
			info : [],
			loading : true,
			errored : false,
			qnum : 0,
			title : '',
			id : '',
			date : '',
			text : '',
		}
	},
	mounted(){
		axios.post('detailqna',{
			qnum : <%=request.getAttribute("qn")%>
		})
		.then(response => {
			this.info = response.data
		})
		.catch(error => {
			console.log(error)
			this.errored = true
		})
		.finally(() => this.loading = false)
	},
	methods : {
		check(id){
			if(session == id)
			return true;
		},
		deleteqna(val){
			location.href="/deleteqna.mvc?qnum="+val;
		},
		modifyqna(val){
			location.href="/modifyqna.mvc?qnum="+val;
		},
	}
})
</script>
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
	<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
</body>
</html>
