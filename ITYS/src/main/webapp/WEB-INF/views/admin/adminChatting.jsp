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
  <title>Admin - 채팅 관리</title>
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
            <h1 class="h3 mb-0 text-gray-800">채팅관리</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item">관리자 페이지</li>
              <li class="breadcrumb-item active" aria-current="page">채팅관리</li>
            </ol>
          </div>

          <!-- Row -->
          <div class="row">
            <!-- Datatables -->
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">채팅내역</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush" id="dataTable">
                    <thead class="thead-light">
                      <tr>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>내용</th>
                        <th>전송인</th>
                        <th>로그인 여부</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>내용</th>
                        <th>전송인</th>
                        <th>로그인 여부</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <c:forEach items="${ requestScope.list1 }" var="ad">
                      <tr>
                        <td>${ ad.student_name }</td>
                        <td>${ ad.tutor_name }</td>
                        <td>${ ad.wrtn_datetm }</td>
                        <td>${ ad.chat_content }</td>
                        <td>${ ad.user_name }</td>
                        <c:if test="${ ad.login_ok eq 'Y' }">
                        	<td><input type="button" value="${ ad.login_ok }" name="loginok_${ ad.user_id }" onclick="changeLogin(this);"></td>
                        </c:if>
                        <c:if test="${ ad.login_ok eq 'N' }">
                        	<td><input type="button" value="${ ad.login_ok }" name="loginok_${ ad.user_id }" onclick="changeLogin(this);"></td>
                        </c:if>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">신고내역</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                    <thead class="thead-light">
                      <tr>
                      	<th>신고번호</th>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>신고내용</th>
                        <th>신고인</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                      	<th>신고번호</th>
                        <th>학생</th>
                        <th>선생님</th>
                        <th>날짜</th>
                        <th>신고내용</th>
                        <th>신고인</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <c:forEach items="${ requestScope.list2 }" var="adb">
                      <tr>
                        <td>${ adb.block_no }</td>
                        <td>${ adb.student_name }</td>
                        <td>${ adb.tutor_name }</td>
                        <td>${ adb.wrtn_datetm }</td>
                        <td>${ adb.contents }</td>
                        <td>${ adb.user_name }</td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!--Row-->

          <!-- Documentation Link -->
          <div class="row">
            <div class="col-lg-12">
              <p>DataTables is a third party plugin that is used to generate the demo table below. For more information
                about DataTables, please visit the official <a href="https://datatables.net/" target="_blank">DataTables
                  documentation.</a></p>
            </div>
          </div>

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
  
  <script type="text/javascript">
  	function changeLogin(element){	
		//선택한 radio의 name 속성값에서 userid 분리 추출함
		var userid = element.name.substring(8);
		console.log(userid);
		if(element.value == "Y"){
			console.log("로그인제한 체크함");
			location.href = "${ pageContext.servletContext.contextPath }/updateLoginOk.do?user_id=" + userid + "&login_ok=N";
		}else{
			console.log("로그인제한 해제함");
			location.href = "${ pageContext.servletContext.contextPath }/updateLoginOk.do?user_id=" + userid + "&login_ok=Y";		
		}
	}
  </script>
  
  <c:import url="/WEB-INF/views/admin/common/footer.jsp" />

</body>

</html>