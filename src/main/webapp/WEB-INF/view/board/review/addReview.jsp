<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
  
  <style type="text/css">
	.starR{
		background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
		background-size: auto 100%;
		width: 30px;
		height: 30px;
		display: inline-block;
		text-indent: -9999px;
		cursor: pointer;
	}
	.starR.on{background-position:0 0;}
  </style>
  
  
  
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
        	<form action="/addreview" method="post" id="addfrm">
	        	음식 고르세요
	        	<input type="button" value="자식창 열기" onclick="openChild()"><br>
	        	고른 음식 : <input type="hidden" id="pInput" name="foodcode">
	        	<input type="text" id="pInputLabel" name="foodname" value="음식을 골라주세요" readonly>
	        	제목 써라 <input type="text" name="title"> <br>
	        	음식 코멘트 쓰세요 <input type="text" name="comment"> <br>
	        	평점 매기세요 
	        	<div class="starRev">
					<span class="starR on" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
					<span class="starR" id="star" value=1></span>
				</div>
				<input type="hidden" id="starVal" name="rating">
	        	<input type="button" onclick="addfrmSubmit()" value="submit">
        	</form>
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

<script type="text/javascript">
       var openWin;
       function openChild()
       {
           // window.name = "부모창 이름"; 
           window.name = "parentForm";
           // window.open("open할 window", "자식창 이름", "팝업창 옵션");
           openWin = window.open("/child",
                   "childForm", "width=1286, height=960, resizable = no, scrollbars = yes");    
       }
       
       $('.starRev span').click(function(){
    	   $(this).parent().children('span').removeClass('on');
    	   $(this).addClass('on').prevAll('span').addClass('on');
    	   return false;
       });
       
       function addfrmSubmit() {
    	   var form = document.getElementById("addfrm");
    	   var star = document.getElementsByClassName("starR on");
    	   var starnum = star.length;
    	   var starVal = document.getElementById("starVal")
    	   starVal.value = starnum;
    	   
    	   form.submit();
       }
 </script>

</body>

</html>
