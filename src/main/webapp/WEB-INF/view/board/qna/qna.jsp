<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <%@include file="/WEB-INF/view/sidebar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content" style="background-image: url(img/곰돌이.jpg); background-size: cover;">

        <!-- Topbar -->
        <%@include file="/WEB-INF/view/topbar.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
        		<h1>자유 게시판</h1>
	<div id="app">
		<div v-if="errored">Error In AJAX Transport</div>
		<div v-else="errored">
			<table>
				<tr style="font-size: x-large; font-style: italic;">
					<td width="200px" align="center">글 번호</td>
					<td width="200px" align="center">제목</td>
					<td width="200px" align="center">작성자</td>
					<td width="200px" align="center">등록일</td>
				</tr>
				<tr>
					<td width="800px" colspan="4" bgcolor="hotpink"></td>
				</tr>
				<template v-for="qna in info">
				<tr>
					<td align="center">{{qna.qnum }}</td>
					<td align="center">
<!-- 						<a v-bind:href="'/detailqna.mvc?qnum=' + qna.qnum">{{qna.title }}</a> -->
						<a href="#" v-on:click="plus(qna.qnum)">{{qna.title }}</a>
					</td>
					<td align="center">{{qna.id }}</td>
					<td align="center">{{qna.date }}</td>
				</tr>
				<tr>
					<td width="800px" colspan="4" bgcolor="gray"></td>
				</tr>
				</template>
				<tr>
					<td colspan="4" align="right" v-show="logincheck()">
						<a href="addform.mvc">글쓰기</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
	var session = "<%=session.getAttribute("id")%>";
	var thistitle = "<%=request.getParameter("title")%>";
var app = new Vue({
	el : "#app",
	data() {
		return{
			info : [],
			loading : true,
			errored : false,
			qnum : '',
			title : thistitle,
			id : '',
			date : '',
			text : '',
		}
	},
	mounted(){
		axios.get('qnas')
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
		logincheck(){
			if(session != "null")
				return true;
		},
		plus(text){
			console.log(text);
				location.href="/detailqna.mvc?qnum="+text;
		}
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
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
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
