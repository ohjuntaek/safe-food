<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Charts</title>

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

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">영양소 차트</h1>
          <p class="mb-4">영양소 별로 얼마나 먹었니??</p>

          <!-- Content Row -->
          <div class="row">

            <div class="col-xl-8 col-lg-7">

              <!-- Bar Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">전체 사용자 영양소 섭취량 보기</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar">
                    <canvas id="myBarChart"></canvas>
                  </div>
                  <hr>
                  	전체 사용자가 섭취한 음식의 영양소
                </div>
              </div>

            </div>

            <!-- Donut Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">내 영양소 섭취량 보기</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <hr>
                  	내가 먹은 음식의 총 영양소별 섭취비율을 보여줍니다
                </div>
              </div>
            </div>
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
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script type="text/javascript">
			var sumsugar = 0;
			var sumprotein = 0;
			var sumnatrium = 0;
			var sumcarbo = 0;
			var sumfat = 0;
			$.getJSON("http://localhost:8080/getsum", function(data) {
				$.each(data, function(idx, obj) {
					sumsugar = obj.sumsugar;
					sumprotein = obj.sumprotein;
					sumnatrium = obj.sumnatrium;
					sumcarbo = obj.sumcarbo;
					sumfat = obj.sumfat
				});
				createChart();
			})
			var allsumsugar = 0;
			var allsumprotein = 0;
			var allsumnatrium = 0;
			var allsumcarbo = 0;
			var allsumfat = 0;
			$.getJSON("http://localhost:8080/getallsum", function(data) {
				$.each(data, function(idx, obj) {
					allsumsugar = obj.sumsugar;
					allsumprotein = obj.sumprotein;
					allsumnatrium = obj.sumnatrium;
					allsumcarbo = obj.sumcarbo;
					allsumfat = obj.sumfat
				});
				createAllChart();
			})

			function createChart() {
						//Set new default font family and font color to mimic Bootstrap's default styling
						Chart.defaults.global.defaultFontFamily = 'Nunito',
						'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
				Chart.defaults.global.defaultFontColor = '#858796';

				// Pie Chart Example
				var ctx = document.getElementById("myPieChart");
				var myPieChart = new Chart(
						ctx,
						{
							type : 'doughnut',
							data : {
								labels : [ "당류", "단백질", "탄수화물", "지방" ],
								datasets : [ {
									data : [ sumsugar, sumprotein, sumcarbo, sumfat  ],
									backgroundColor : [ '#4e73df', '#1cc88a',
											'#36b9cc', '#36c2fc', '#58FAF4' ],
									hoverBackgroundColor : [ '#2e59d9',
											'#17a673', '#2c9faf', '#58FA58', '#A9E2F3'],
									hoverBorderColor : "rgba(234, 236, 244, 1)",
								} ],
							},
							options : {
								maintainAspectRatio : false,
								tooltips : {
									backgroundColor : "rgb(255,255,255)",
									bodyFontColor : "#858796",
									borderColor : '#dddfeb',
									borderWidth : 1,
									xPadding : 15,
									yPadding : 15,
									displayColors : false,
									caretPadding : 10,
								},
								legend : {
									display : false
								},
								cutoutPercentage : 80,
							},
						});

			}
			
			
			
			
			
			
			
			
			function createAllChart() {
				// Set new default font family and font color to mimic Bootstrap's default styling
				Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
				Chart.defaults.global.defaultFontColor = '#858796';

				function number_format(number, decimals, dec_point, thousands_sep) {
				  // *     example: number_format(1234.56, 2, ',', ' ');
				  // *     return: '1 234,56'
				  number = (number + '').replace(',', '').replace(' ', '');
				  var n = !isFinite(+number) ? 0 : +number,
				    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
				    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
				    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
				    s = '',
				    toFixedFix = function(n, prec) {
				      var k = Math.pow(10, prec);
				      return '' + Math.round(n * k) / k;
				    };
				  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
				  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
				  if (s[0].length > 3) {
				    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
				  }
				  if ((s[1] || '').length < prec) {
				    s[1] = s[1] || '';
				    s[1] += new Array(prec - s[1].length + 1).join('0');
				  }
				  return s.join(dec);
				}

				// Bar Chart Example
				var ctx = document.getElementById("myBarChart");
				var myBarChart = new Chart(ctx, {
				  type: 'bar',
				  data: {
					  labels : [ "당류", "단백질", "탄수화물", "지방" ],
				    datasets: [{
				      label: "(m)g",
				      backgroundColor: "#4e73df",
				      hoverBackgroundColor: "#2e59d9",
				      borderColor: "#4e73df",
				      data: [ allsumsugar, allsumprotein, allsumcarbo, allsumfat  ],
				    }],
				  },
				  options: {
				    maintainAspectRatio: false,
				    layout: {
				      padding: {
				        left: 10,
				        right: 25,
				        top: 25,
				        bottom: 0
				      }
				    },
				    scales: {
				      xAxes: [{
				        time: {
				          unit: 'month'
				        },
				        gridLines: {
				          display: false,
				          drawBorder: false
				        },
				        ticks: {
				          maxTicksLimit: 6
				        },
				        maxBarThickness: 25,
				      }],
				      yAxes: [{
				        ticks: {
				          maxTicksLimit: 5,
				          padding: 10,
				          // Include a dollar sign in the ticks
				          callback: function(value, index, values) {
				            return number_format(value);
				          }
				        },
				        gridLines: {
				          color: "rgb(234, 236, 244)",
				          zeroLineColor: "rgb(234, 236, 244)",
				          drawBorder: false,
				          borderDash: [2],
				          zeroLineBorderDash: [2]
				        }
				      }],
				    },
				    legend: {
				      display: false
				    },
				    tooltips: {
				      titleMarginBottom: 10,
				      titleFontColor: '#6e707e',
				      titleFontSize: 14,
				      backgroundColor: "rgb(255,255,255)",
				      bodyFontColor: "#858796",
				      borderColor: '#dddfeb',
				      borderWidth: 1,
				      xPadding: 15,
				      yPadding: 15,
				      displayColors: false,
				      caretPadding: 10,
				      callbacks: {
				        label: function(tooltipItem, chart) {
				          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
				          return  number_format(tooltipItem.yLabel) + "." + datasetLabel;
				        }
				      }
				    },
				  }
				});

			}
		</script>
  
  
  
  
</body>

</html>
