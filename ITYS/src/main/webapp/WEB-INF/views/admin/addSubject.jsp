<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/img/logo/logo.png" rel="icon">
<title>Admin - 키워드 관리</title>
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

<style>
a {
  text-decoration-line: none;
  text-align : center;
  }
#submitBtn {
  margin-left:30px;
  height: 43px;
  margin-top: 0px;
}
#addSubject{
	padding: 25px 20px;
	margin-top: 20px;
	width:400px;
}
#submitBtn{
	padding-bottom: 20px; 
	padding-left:11px;
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
            <h3 class="h3 mb-0 text-gray-800">과목 관리</h3>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item"><a href="/itys/adminDashboard.do">관리자 페이지</a></li>
              <li class="breadcrumb-item active" aria-current="page">회원관리</li>
            </ol>
          </div> 
          
          <!-- Row -->
          <div class="row">
            <div class="col-lg-12">
              <!-- Form Basic -->
              <div class="card mb-4" style="padding: 20px 100px 20px 100px"><!--top,right,bottom,left-->
                
                <div class="card-body">
                  <form name="add-btn">
                  <div class="row">
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" >
                  <h6 class="m-0 font-weight-bold text-primary" style="padding-bottom: 20px;" >카테고리명</h6>
                </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="newCategory" id="newCategory" placeholder="Enter Category"> 
                    </div>
                    </div>
                    <div class="row">
                  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" >
                  <h6 class="m-0 font-weight-bold text-primary" style="padding-bottom: 20px; padding-left:11px" >과목 이름</h6>
                </div>
                    <div class="form-group">
                      <input type="text" class="form-control" name="newSubject" id="newSubject" placeholder="Enter Subject"> 
                    </div>
                    
                    <button type="submit" id="submitBtn" class="btn btn-primary" onclick="InsertSubject();" >Submit</button>
                    </div>
                  </form>
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
<script>	
	var newSubject = null;
	
	function InsertSubject(){
		category=$('#newCategory').val();
		sub_name=$('#newSubject').val();
		var conVal=confirm("'"+category+"-"+sub_name+"' 을 키워드에 추가하시겠습니까?");
		if (conVal == true){
			document.forms["add-btn"].submit();		
			$.ajax({
	        	url:"confirmSubject.do",
	        	type:"post",
	        	data : {'category': category, 'sub_name':sub_name},
	        	success : function(cnt){
	        		if(cnt==0){
	        			alert("과목을 입력했습니다.");
	        			document.location.href="addSubject.do";
	        		}
	        		else if (cnt==1) {
	        			alert("중복된 과목입니다.");
	        			document.location.href="addSubject.do";
	        		}
	        	}
	        })  
		}
		else {
			alert("추가를 취소했습니다.");
			location.reload(true);	
		}			
	}
</script>
</html>