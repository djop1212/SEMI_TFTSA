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
<title>Admin - 회원 관리</title>
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<%-- <sctipt>
	function searchFunction(){
		request.open("Post","")
		}
</sctipt>--%>
<style>
/* Dropdown Button */
.btn btn-primary dropdown-toggle {
  background-color: #6777EF;
  color: white;
  padding: .375rem .75rem;
  font-size: 1rem;
  border-radius: .25rem;
  border-color: #6777EF;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #fff;
  min-width: 147px;
  border-radius: .25rem;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #e3e6f0;
	text-decoration: none;
	color: black;
	}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
	}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .btn btn-primary dropdown-toggle {background-color: #394eea;}

a {
  text-decoration-line: none;
  text-align : center;
  }

#dropdownbtn {
  margin-left:8px;
}
</style> 
</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/admin/common/sidebar.jsp" />

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/admin/common/topbar.jsp" />
			        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h3 class="h3 mb-0 text-gray-800">선생님 관리</h3>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item"><a href="/itys/adminDashboard.do">관리자 페이지</a></li>
              <li class="breadcrumb-item active" aria-current="page">선생님관리</li>
            </ol>
          </div> 

          <!-- Row -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
              
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                </div>
                
                <div class="search-option" style="display:flex;">
                <div class="col-sm-12 col-md-6">
					<div class="dropdown">
					  <button class="btn btn-primary dropdown-toggle" style="height:43px;min-width: 149px;"> 선생님 </button>
					  <div class="dropdown-content">
					    <a href="/itys/adminMember.do"> 전체 회원 </a>
					    <a href="/itys/adminStudent.do"> 학생 </a>
					    <a href="/itys/adminTutor.do"> 선생님 </a>
					  </div>
					</div>
					</div>
                <div class="col-sm-12 col-md-6">
                <form action="adminMember.do" method="POST" class="navbar-search">
                  <div class="input-group" style="width:200px;float:right;margin-right:15px">
                    <input type="text" onkeyup="searchFunction()" class="form-control bg-light border-1 small" placeholder="Search an user"
                      aria-label="Search" aria-describedby="basic-addon2" style="border-color: #3f51b5;">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
                </div>
                </div>
                
                <div class="table-responsive p-3">
                
                  <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                    <thead class="thead-light">
                      <tr>
                        <th>회원번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>주민등록번호</th>
                        <th>전화번호</th>
                        <th>이메일</th>
                        <th>로그인여부</th>
                        <th>선택</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>회원번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>주민등록번호</th>
                        <th>전화번호</th>
                        <th>이메일</th>
                        <th>로그인여부</th>
                        <th>선택</th>
                      </tr>
                    </tfoot>
                    <tbody>
                       <c:forEach items="${ requestScope.list }" var="m">
						<tr>
							<td>${ m.user_no }</td>
							<td>${ m.user_id }</td>
							<td>${ m.user_name }</td>
							<td><c:out value="${fn:substring(m.user_ssn, 0, fn:length(m.user_ssn) - 6)}"/>******</td>
							<td>${ m.user_phone }</td>
							<td>${ m.user_email }</td>
							<td>${ m.login_ok }</td>
							<td><input type="checkbox" value=${ m.user_no }></td>
						</tr>
					  </c:forEach>  
                    </tbody>
                  </table>
                  <div align="right" style=50px>
                  <a href="#" class="btn btn-danger" >
                    <i class="fas fa-trash" ></i>
                  </a>
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
			</div>
		</div>
	</div>
</body>
<c:import url="/WEB-INF/views/admin/common/footer.jsp" />

</html>