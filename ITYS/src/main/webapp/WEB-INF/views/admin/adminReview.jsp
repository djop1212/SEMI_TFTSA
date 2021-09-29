<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/img/logo/logo.png" rel="icon">
<title>Admin - 리뷰 관리</title>
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/css/ruang-admin.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/admin_resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="${ pageContext.servletContext.contextPath }/admin_resources/vendor/jquery/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/admin/common/sidebar.jsp" />

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/admin/common/topbar.jsp" />
			        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">리뷰관리</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item"><a href="/itys/adminDashboard.do">관리자 페이지</a></li>
              <li class="breadcrumb-item active" aria-current="page">회원관리</li>
            </ol>
          </div>

          <!-- Row -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                </div>
                
                 <div class="search-option" style="display:flex;position:relative; left: 900px; ">	
                <form action="adminReview.do" method="POST" class="navbar-search">
               
                  <div class="input-group" style="width:200px;">
                    <input type="text" name="searched_txt" class="form-control bg-light border-1 small" placeholder="Search a Tutor"
                      aria-label="Search" aria-describedby="basic-addon2" style="border-color: #3f51b5; float:right">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
                </div>
                
                <div class="table-responsive p-3">
                <form action="deleteReview.do" method="post" id="multidelete">
                  <table class="table align-items-center table-flush table-hover" id="dataTableHover" >
                    <thead class="thead-light" >
                      <tr>
                      	<th>번호</th>
                        <th>선생님성함</th>
                        <th>과목</th>
                        <th>별점</th>
                        <th>수강후기</th>
                        <th>선택</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                      	<th>번호</th>
                        <th>선생님성함</th>
                        <th>과목</th>
                        <th>별점</th>
                        <th>수강후기</th>
                        <th>선택</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <c:forEach items="${ requestScope.list }" var="r">
						<tr>
							<td>${ r.rev_no }</td>
							<td>${ r.user_name }</td>
							<td>${ r.sub_name }</td>
							<td>${ r.score }</td>
							<td>${ r.rev_content }</td>
							<td><input type="checkbox" name="del_chk" value=${ r.rev_no }></td>
						</tr>
					  </c:forEach>
					  <input type="hidden" name="clickedValue" id="clickedValue" value=""/>
                    </tbody>
                  </table>
                  </form>
                  <div align="right" style=50px>
                  <a href="#" class="btn btn-danger" onclick="ClickedData();">
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
</body>
<c:import url="/WEB-INF/views/admin/common/footer.jsp" />
<script>
	var searched_txt = $("#searched_txt").val();
	function searchFunction(){	
		$.ajax({
			url : "/itys/adminReview",
			type: 'POST',
			data : {searched_txt : searched_txt},
			success : function(data){
						console.log("searched_txt",data);
	        	}				 		
		})
	} 
	//삭제할 항목의 id 저장할 배열
	var chkArray = new Array(); // 배열 선언
	
	function ClickedData(){
		var obj = $("[name=del_chk]");
		// 체크된 체크박스의 value 값을 배열에 저장.
	    $('input:checkbox[name=del_chk]:checked').each(function() { 
	        chkArray.push(this.value);
	    });
	    $('#clickedValue').val(chkArray);
	    var conVal=confirm("댓글번호 '"+$('#clickedValue').val()+"'을 리뷰에서 삭제하시겠습니까?");
	    if (conVal == true){
	        location.reload(true);
	        console.log(chkArray);
	
	        $.ajax({
	        	url:"deleteReview.do",
	        	type:"post",
	        	data : {'list': chkArray.join(',')},
	        	  success : function(data){
	        	    console.log('삭제를 성공했습니다!');
	        	  }
	        })
	    }
	    else if(conVal == false){
	    	alert("삭제를 취소했습니다.");
	    	location.reload(true);
	    }
	}
</script>
</html>