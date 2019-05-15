<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
      <div id="content">

        <!-- Topbar -->
        <%@include file="/WEB-INF/view/topbar.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
        		<div id="app">
		<form action="" method="post" @submit.prevent="addqna">
			<!-- submit 하기전에 검사할 메서드 호출 -->
			제목 :
			<input type="text" name="title" v-model="title">
			<br /> 내용 :
			<textarea rows="" cols="" name="text" v-model="text"></textarea>
			<br />
			<input type="submit" value="등록">
		</form>
	</div>
	<script type="text/javascript">
	var session = "<%=session.getAttribute("id")%>";
	<% SimpleDateFormat fomat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>
	var curdate = "<%=fomat.format(new Date())%>";
	
new Vue({
	el : "#app",
	data(){
		return{
			loading : true,
			errored : false,
			qnum : 0,
			title : '',
			text : '',
			id : session,
			date : curdate,
		}
	},
	methods : {
		addqna(){ // 유효성 체크
			if(this.title==''){
				alert('제목을 입력하세요'); return;
			}
			if(this.text==''){
				alert('내용을 입력하세요'); return;
			}
			// form에 입력한 데이터가 문제가 없으면 진행, insert 요청해서 진행
			axios.post('addqna.json',{
				title : this.title, // 보낼데이터	
				text : this.text,
				id : this.id,
				date: this.date,
			})
			.then(response => {
				console.log(response.data) // 받아온 데이터 출력
				if(response.data.result == true){
// 					alert("insert 성공")
					location.href="qna.mvc"; // 페이지 이동
				}
				else{
					alert("insert 실패")
					location.href="qna.mvc"; // 페이지 이동
				}
			})
			.catch(error => {
				console.log(error)
				this.errored = true
			})
			.finally(() => this.loading = false)

		},
	},
});	
	
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

  <!-- Page level plugins -->

</body>

</html>
