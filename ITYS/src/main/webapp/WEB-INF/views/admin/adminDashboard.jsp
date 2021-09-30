<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/img/logo/logo.png" rel="icon">
<title>Admin - Dashboard</title>
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/admin/common/sidebar.jsp" />

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/admin/common/topbar.jsp" />
				<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
          </div>

          <div class="row mb-3">
            <!-- 오늘 거래 액수 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Earnings</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> ${requestScope.today_earning}</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span>For Today</span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-primary"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 오늘 거래 수량 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Sales</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${requestScope.month_sales}</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span>For Today</span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-shopping-cart fa-2x text-success"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 오늘 사용자 증가량 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Total User</div>
                      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${requestScope.total_users}</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span>For whole Period</span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-info"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 오늘 채팅 증가량 -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Pending Requests</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${requestScope.potential}</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span>For whole Period</span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-warning"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">매출그래프</h6>
                  
                </div>
                <div class="card-body" style="height">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-7">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Products Sold</h6>
                  <!-- <div class="dropdown no-arrow">
                    <a class="dropdown-toggle btn btn-primary btn-sm" href="#" role="button" id="dropdownMenuLink"
                      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Month <i class="fas fa-chevron-down"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                      aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Select Period</div>
                      <a class="dropdown-item" href="#">Today</a>
                      <a class="dropdown-item" href="#">Week</a>
                      <a class="dropdown-item active" href="#">Month</a>
                      <a class="dropdown-item" href="#">This Year</a>
                    </div>
                  </div> -->
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myPieChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <!-- Invoice Example -->
            <div class="col-xl-8 col-lg-7 mb-4">
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Invoice</h6>
                  <a class="m-0 float-right btn btn-danger btn-sm" href="/itys/selectpaymentall.do">View More <i
                      class="fas fa-chevron-right"></i></a>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>결제방법</th>
                        <th>상태</th>
                        <th>금액</th>
                      </tr>
                    </thead>
                      <tbody>
                      <c:forEach items="${ requestScope.pay_list }" var="p">
                      <tr>
                        <td>${ p.student_name }</td>
                        <td>${ p.tutor_name }</td>
                        <td>${ p.pay_datetm }</td>
                        <td>${ p.pay_method }</td>
                        <c:if test="${ p.pay_status == 'COMPLETE' }">
                        	<td><span class="badge badge-success">${ p.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ p.pay_status == 'WAITING' }">
                        	<td><span class="badge badge-info">${ p.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ p.pay_status == 'RETURN' }">
                        	<td><span class="badge badge-warning">${ p.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ p.pay_status == 'CANCEL' }">
                        	<td><span class="badge badge-danger">${ p.pay_status }</span></td>
                        </c:if>
                        <td><span class="btn btn-sm btn-primary">${ p.pay_amount }</span></td>
                        <!-- warning, danger, info -->
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
                <div class="card-footer"></div>
              </div>
            </div>
            <!-- Message From Customer-->
            <div class="col-xl-4 col-lg-5 ">
              <div class="card">
                <div class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-light">Newly Posted</h6>
                </div>
                <div>
                <c:forEach items="${ requestScope.board_list }" var="b">
                  <div class="customer-message align-items-center" style="height:60px">
                    <a class="font-weight-bold" href="/itys/bdetail.do?board_no=${b.board_no}&page=1">
                      <div class="text-truncate message-title">${b.board_content}</div>
                      <div class="medium text-gray-500 message-time font-weight-bold" style="float:left;">${b.board_writer}</div>
                      <div class="small text-gray-500 message-time font-weight-bold" style="float:right;"><fmt:formatDate value="${b.board_date}" pattern="yyyy-MM-dd HH:ss"/></div>
                    </a>
                  </div>
                  </c:forEach>
                  <div class="card-footer text-center">
                    <a class="m-0 small text-primary card-link" href="/itys/blist.do?page=1">View More <i
                        class="fas fa-chevron-right"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!--Row-->

          <div class="row">
            <div class="col-lg-12 text-center">
              <p>Do you like this template ? you can download from <a href="https://github.com/indrijunanda/RuangAdmin"
                  class="btn btn-primary btn-sm" target="_blank"><i class="fab fa-fw fa-github"></i>&nbsp;GitHub</a></p>
            </div>
          </div>

          <!-- Modal Logout -->
          
        <!---Container Fluid-->
			
	
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/js/demo/chart-area-demo.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery/jquery.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/js/ruang-admin.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/chart.js/Chart.min.js"></script>
	
	<c:import url="/WEB-INF/views/admin/common/footer.jsp" />
</body>

<script>
	//Area Chart Example
	var ctx = document.getElementById("myAreaChart");
	var axis_array = ${ requestScope.month };
	var data_array = ${ requestScope.earning };
	console.log(axis_array);
	var myLineChart = new Chart(ctx, {
	  type: 'bar',
	  data: {
		//x축 : 
	    labels: axis_array,
	    datasets: [{
	      label: "Earnings",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.5)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: data_array
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
	          unit: 'date'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: false
	        },
	        ticks: {
	          maxTicksLimit: 7
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return  number_format(value)+'원';
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
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 14,
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      intersect: false,
	      mode: 'index',
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ': ' + number_format(tooltipItem.yLabel)+'원';
	        }
	      }
	    }
	  }
	});
	
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';

	// Pie Chart Example
	var ctx2 = document.getElementById("myPieChart");
	var axis_array1 = ${ requestScope.category };
	var data_array1 = ${ requestScope.cnt };
	var myPieChart = new Chart(ctx2, {
	  type: 'doughnut',
	  data: {
	    labels: axis_array1,
	    datasets: [{
	      data: data_array1,
	      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
	      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
	      hoverBorderColor: "rgba(234, 236, 244, 1)",
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      caretPadding: 10,
	    },
	    legend: {
	      display: true
	    },
	    cutoutPercentage: 80,
	  },
	});

</script>


</html>