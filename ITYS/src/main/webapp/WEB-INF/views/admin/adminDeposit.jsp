<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="${ pageContext.servletContext.contextPath }/admin_resources/img/logo/logo.png" rel="icon">
  <title>Admin - 입금 관리</title>
  <link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
  <link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">
  <div id="wrapper">
  
  	<c:import url="/WEB-INF/views/admin/common/sidebar.jsp" />
  	
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        
        <c:import url="/WEB-INF/views/admin/common/topbar.jsp" />
        
        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">입금관리</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item">관리자 페이지</li>
              <li class="breadcrumb-item active" aria-current="page">입금관리</li>
            </ol>
          </div>
          
          <!-- Row -->
          <div class="row">
            <!-- Datatables -->
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">입금관리</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush" id="dataTable">
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
                    <tfoot>
                      <tr>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>결제방법</th>
                        <th>상태</th>
                        <th>금액</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <c:forEach items="${ requestScope.list }" var="adp">
                      <tr>
                        <td>${ adp.student_name }</td>
                        <td>${ adp.tutor_name }</td>
                        <td>${ adp.pay_datetm }</td>
                        <td>${ adp.pay_method }</td>
                        <c:if test="${ adp.pay_status == 'COMPLETE' }">
                        <td><span class="badge badge-success">${ adp.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ adp.pay_status == 'WAITING' }">
                        <td><span class="badge badge-info">${ adp.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ adp.pay_status == 'RETURN' }">
                        <td><span class="badge badge-warning">${ adp.pay_status }</span></td>
                        </c:if>
                        <c:if test="${ adp.pay_status == 'CANCEL' }">
                        <td><span class="badge badge-danger">${ adp.pay_status }</span></td>
                        </c:if>
                        <td><span class="btn btn-sm btn-primary">${ adp.pay_amount }</span></td>
                        <!-- warning, danger, info -->
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!--Row-->

          <!-- Modal Logout -->
          <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Are you sure you want to logout?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                  <a href="login.html" class="btn btn-primary">Logout</a>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!---Container Fluid-->
      </div>
      
      <script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery/jquery.min.js"></script>
	  <script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	  <script src="${ pageContext.servletContext.contextPath }/admin_resources/js/ruang-admin.min.js"></script>
	  <!-- Page level plugins -->
	  <script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/jquery.dataTables.min.js"></script>
	  <script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      
      <!-- Page level custom scripts -->
	  <script>
	    $(document).ready(function () {
	      $('#dataTable').DataTable(); // ID From dataTable 
	      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
	    });
	  </script>
      
	<c:import url="/WEB-INF/views/admin/common/footer.jsp" />

</body>

</html>