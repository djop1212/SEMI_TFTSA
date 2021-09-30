<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="reviewCount" value="${ requestScope.reviewCount }" />
<c:set var="avgScore" value="${ requestScope.avgScore }" />
<c:set var="pd" value="${requestScope.pd }"/>
<html>

<head>

  <title>Joson</title>
  <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
 <script type="text/javascript"src="${ pageContext.servletContext.contextPath }/resources/js/jquery.barrating.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <!-- bootstrap core css -->
  <%-- <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

  <link href="${ pageContext.servletContext.contextPath }/resources/css/style.css" rel="stylesheet" />

  <link href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" rel="stylesheet" />
   --%><style type="text/css">
	.profilePic{width:200px; height:200px}
	.info-title{width:760px; height:200px}
	.new-info{margin:0; padding:0; width:650px; height:60px;
					margin-left:12px;}
	.info-head{margin:0; padding:0; width:650px; height:60px;
					margin-left:12px}
	.head{margin:0; padding:0; width:650px; height:60px;
			margin-left:12px}
			
	.select-heart{width:40px;height:40px; margin-left:250px;}
	
	.stitle{margin:0; padding:0; width:500px; height:30px;
			margin-left:12px; }
	.sstitle{margin:0; padding:0; width:500px; height:30px;
			margin-left:12px;}
	
    .usp{width:20px;height:20px; margin-left:10px;}
	
	.review{margin:0; padding:0; width:250px; height:24px;
			margin-left:10px}
	.Star1{margin:0; padding:0; width:250px; height:24px;
			margin-left:0px}
	.emptyStar{width:20px;height:20px;}
	.Stars{ list-style:none; float:left;}
	
	.detail-box{width:960px; height:100px; margin:0px; padding:0; margin-top:50px;}
	
	.menus{width:960px;height:100px;margin:0px; padding:0;list-style-type: none; }
	.d-d{width:215px;height:60px;margin:0px; padding:0;
		 list-style:none; float:left;
	   	font-size:15px;
		padding: 0; 
		}

.br-theme-fontawesome-stars-o .br-widget {
    height: 28px;
    white-space: nowrap;
}

.br-theme-fontawesome-stars-o .br-widget a {
    font: normal normal normal 17px/1 'Font Awesome 5 Free';
    font-weight: 500;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    text-decoration: none;
    color: #FFB600;
    margin-right: 4px;
}

.br-theme-fontawesome-stars-o .br-widget a:after {
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    content: '\f005';
    color: #d2d2d2;
}

.br-theme-fontawesome-stars-o .br-widget a.br-active:after {
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    content: '\f005';
    color: #FFB600;
}

.br-theme-fontawesome-stars-o .br-widget a.br-selected:after {
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    content: '\f005';
    color: #FFB600;
}

.br-theme-fontawesome-stars-o .br-widget .br-current-rating {
    display: none;
}

.br-theme-fontawesome-stars-o .br-readonly a {
    cursor: default;
}

.br-theme-fontawesome-stars-o .br-widget a.br-fractional:after {
    font-weight: 900;
    content: '\f089';
    color: #FFB600;
} 

  </style>





</head>

<body class="sub_page">
   <div class="hero_area">
  <c:import url="/WEB-INF/views/common/menubar.jsp" />
  </div>

  <!-- about section -->
  <section class="about_section layout_padding">
    <div class="side_img">
      <img src="${ pageContext.servletContext.contextPath }/resources/images/side-img.png" alt="" />
    </div>
    <div class="container">
      <div class="row">
      <div class="pic">
			<c:if test="${ !empty requestScope.tprofile }">
          <img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${ tprofile[0].pic }" class="profilePic" >
			</c:if>
			<c:if test="${ !empty requestScope.tpic }">
			<img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${tpic[0].pic}" class="profilePic" >
			</c:if>
			<c:if test="${ !empty requestScope.td2 }">
			<img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${td2[0].pic}" class="profilePic" >
          	</c:if>
          	</div>
         <div class="info-title">
        
        	<div class="info-head">
        		<div class="head" style="font-size:30px; text-align:center; margin-top:5px">
        		

                   선생님 이름  ${ tprofile[0].user_name } ${tpic[0].user_name } ${td2[0].user_name}
                 <c:if test="${ loginMember.user_position eq 'S' }">
                   <%-- <c:url var="ts" value="/tsave.do">
					<c:param name="student_no" value="${ loginMember.user_no }" />
					<c:param name="tutor_no" value="8"/>
					 <c:param name="user_no" value="8"/>
				</c:url>  --%>
				  <c:if test="${ empty requestScope.tlikes.student_no }">
				 <a href="javascript:void(0);" onclick="callFunction();" class="tsave"><img src="${ pageContext.servletContext.contextPath }/resources/images/select_off.png" class="select-heart"  style="maring-left:10px" ></a>
				 </c:if>
				 <script type="text/javascript">
				 function callFunction(){ 
	 $.ajax({
			url: "tsave.do",
			type: "get",
			data: {student_no: ${ loginMember.user_no }, tutor_no: ${ tutorno.user_no }, user_no: ${ tutorno.user_no }},
			success: function(data){
				console.log("success : " + data);
				
					alert("찜을 하였습니다.");
					
					location.href="detail.do?user_no="+ ${tutorno.user_no} + "&" +"student_no=" + ${loginMember.user_no} +"&" +"tutor_no=" + ${tutorno.user_no} ;
				
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log("error : " + jqXHR + ", " 
						+ textStatus + ", " + errorThrown);
			}
		});
	
	}
 

 </script>   
				 
				 
				<%--  <c:url var="cts" value="/ctsave.do">
					<c:param name="student_no" value="${ loginMember.user_no }" />
					<c:param name="tutor_no" value="${tutorno.user_no }"/>
					  
					</c:url> --%>
					
				 <c:if test="${ requestScope.tlikes.tutor_no eq requestScope.tutorno.user_no }"> 
				 <a href="javascript:void(0);" onclick="callFunction1();"class="ctsave"><img src="${ pageContext.servletContext.contextPath }/resources/images/select_on.png" class="select-heart"  style="maring-left:10px" ></a>
				</c:if>
				 <script type="text/javascript">
          		 function callFunction1(){ 
	 $.ajax({
			url: "ctsave.do",
			type: "get",
			data: {student_no: ${ loginMember.user_no }, tutor_no: ${ tutorno.user_no }, user_no: ${ tutorno.user_no }},
			success: function(data){
				console.log("success : " + data);
				
					alert("찜을 취소하였습니다.");
					
					location.href="detail.do?user_no="+ ${tutorno.user_no} + "&" +"student_no=" + ${loginMember.user_no} + "&" +"tutor_no=" + ${tutorno.user_no} ;
				
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log("error : " + jqXHR + ", " 
						+ textStatus + ", " + errorThrown);
			}
		});
	
	}
 

 </script>  
          		</c:if>
          		</div>

          		
             <div class="stitle">
             	<div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/uni.png" class="usp" >
             <span class="uni" style="width:30px; height:30px; margin-left:10px; ">

                           학교 ${ tprofile[0].l_grd } ${tpic[0].l_grd } ${td2[0].l_grd}

             	</span>
             	</div>
              </div>
              
             <div class="stitle">
             <div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/sub.jpg" class="usp" >
              <span class="sub" style="width:30px; height:30px; margin-left:10px;">

              			   과목
                       ${ tprofile[0].sub_name } ${tpic[0].sub_name } ${td2[0].sub_name}

             	</span>
             </div>
             </div>
             
             <div class="stitle">
             <div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/place.png" class="usp" >
              <span class="place" style="width:30px; height:30px; margin-left:10px;">
                           지역 ${ tprofile[0].area } ${tpic[0].area } ${td2[0].area} 
             	</span>
             	<div>
             	
             	
             	
             	<c:if test="${ loginMember.user_position eq 'S' && empty searchRoom }">
             	 <c:url var="openchat" value="/openchatting.do">
				<c:param name="student_no" value="${ loginMember.user_no }"/>
				<c:param name="tutor_no" value="${tutorno.user_no }"/>
				 <c:param name="tutor_name" value="${tutorno.user_name }"/>
				 <c:param name="student_name" value="${ loginMember.user_name }"/>
							
					</c:url>
			
             	<button onclick="location.href='${ openchat }'"class="chat_num"style="width:100px;height:50px;margin-left:525px; border: none;border-radius:10px;text-decoration: none;background-color:#20c997; color:white;">채팅하기</button>
      </c:if>
      
    <c:if test="${ loginMember.user_position eq 'S' && searchRoom.tutor_no eq tutorno.user_no  && searchRoom.student_no eq loginMember.user_no}">
             	 <c:url var="openchat" value="/selectChatting.do">
             	 <c:param name="chat_room_no" value="${searchRoom.chat_room_no }"/>
				<c:param name="student_no" value="${ loginMember.user_no }"/>
				<c:param name="tutor_no" value="${tutorno.user_no }"/>
				
					</c:url>
			
             	<button onclick="location.href='${ openchat }'"class="chat_num"style="width:100px;height:50px;margin-left:525px; border: none;border-radius:10px;text-decoration: none;background-color:#20c997; color:white;">채팅하기</button>
      </c:if> 
              </div>
              
          

             </div>
             </div>
          
             <div class="stitle">
               <div class="sstitle">
             <div class="review">
              <ul class="Star1" >
            
                  <c:choose>
              			  				
              			  		        <c:when test = "${ avgScore == 1 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 2 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 3 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 4 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 5 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 6 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 7 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 8 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 9 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 10 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  		        </c:when>
              			  		        
 										</c:choose>
                	  &nbsp;  <span class="point" style="font-size:18px"> ${ avgScore } </span>
                	  <span calss="reviewcount" style="font-size:13px;"> ${ reviewCount } (개)</span>
                	 
                </ul>
         
          
             </div>
               </div>
             </div>
        </div>
        </div>
        
        
          <div class="detail-box">
        
                <ul class="menus">
                <c:if test="${ loginMember.user_position eq 'T' }">
                <c:url var="tp" value="/tprofilet.do">
					<c:param name="user_no" value="${ tutorno.user_no  }" />
					
								</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tp }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">프로필</a></li>
					</c:if>
					
					
                <c:if test="${ loginMember.user_position eq 'S' }">
               <c:url var="tp" value="/tprofile.do">
					<c:param name="user_no" value="${tutorno.user_no }" />
					<c:param name="tutor_no" value="${tutorno.user_no }" />
					 <c:param name="student_no" value="${loginMember.user_no }"/>
								</c:url>
                	<li class="d-d"  id="d-d"><a href="${tp }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">프로필</a></li>
		
				 
				</c:if>
				
					
					<c:if test="${ loginMember.user_position eq 'T' }">
                	 <c:url var="tv" value="/tpict.do">
					<c:param name="user_no" value="${ tutorno.user_no  }" />
				
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tv }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">사진</a></li>
					</c:if>
					
					<c:if test="${ loginMember.user_position eq 'S' }">
                	 <c:url var="tv" value="/tpic.do">
					<c:param name="user_no" value="${tutorno.user_no }" />
					<c:param name="student_no" value="${ loginMember.user_no }"/>
					<c:param name="tutor_no" value="${tutorno.user_no }"/>
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tv }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">사진</a></li>
					</c:if>
					
					
			<c:if test="${ loginMember.user_position eq 'T' }">
                	<c:url var="trt" value="/treviewt.do">
					<c:param name="user_no" value="${ tutorno.user_no  }" />
			</c:url>
                	<li class="d-d"  id="d-d"><a href="${ trt }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;" >리뷰</a></li>
						</c:if>
						
						<c:if test="${ loginMember.user_position eq 'S' }">
						<c:url var="tr" value="/treview.do">
					<c:param name="user_no" value="${tutorno.user_no }" />
					<c:param name="student_no" value="${ loginMember.user_no }"/>
					<c:param name="user_name" value="${ loginMember.user_name }"/>
					<c:param name="tutor_no" value="${tutorno.user_no }"/>
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tr }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;" >리뷰</a></li>
						</c:if>
 	
				 <c:if test="${ loginMember.user_position eq 'T'}">
                	<c:url var="tq" value="/tqnat.do">
					<c:param name="tutor_no" value="${tutorno.user_no  }" />
					</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tq }"  style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">질문/답변</a></li>

                </c:if> 
    
                
                <c:if test="${ loginMember.user_position eq 'T' && loginMember.user_no eq tutorno.user_no }"> 
         
                	<c:url var="tqa" value="/qnaform.do">
					<c:param name="tutor_no" value="${tutorno.user_no  }" />
					</c:url>
                	<li class="d-d"  id="d-d"><a href="javascript:callFunction3();" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">질문/답변</a></li>
 				
 				
 				<script>
               function callFunction3(){

              	 if (confirm("작성된 글이 없습니다. 작성 하시 겠습니까? ") == true){    //확인

              	     location.href="${ tqa }";

              	 }else{   //취소
         	     return;
					 }
				 }
               </script>
               </c:if> 
         
                
                <c:if test="${ loginMember.user_position eq 'S' }">
                <c:url var="tq" value="/tqna.do">
					<c:param name="tutor_no" value="${tutorno.user_no }" />
					<c:param name="student_no" value="${ loginMember.user_no }"/>
					<c:param name="user_no" value="${tutorno.user_no }"/>
					
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tq }"  style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">질문/답변</a></li>
                </c:if>
                  </ul>
      
             </div>
          
            <div class="heading_container">

            <c:if test="${ !empty requestScope.tprofile }">
            
             <div class="tutor-info" style="width:960px; height:1800px; margin:0px; padding:0px">
             

              <h5>한줄소개</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>

						${ tprofile[0].intro } </td></tr>

              </table>
               <hr>
               <br>
               
              <h5>학교</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	<tr><td>${ tprofile[0].l_grd }</td></tr>

              </table>
              <hr>
              <br>
              
     
              
              <h5>과외가능지역</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	<tr><td>${ tprofile[0].area }</td></tr>

              </table>
              <hr>
              <br>
              
              <h5>성격</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               
				<tr><td>${ tprofile[0].key_name }</td></tr>
              </table>
              <hr>
              <br>
              
              <h5>과목</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	
               	<tr><td>${ tprofile[0].sub_name }</td></tr>
            

              </table>
              <hr>
              <br>
              
              <h5>수업료</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	<tr><td>${ tprofile[0].min_pay }</td></tr>
              </table>
              

              <hr>
              <br>
              
              
              
              <h5>수업방식</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	<tr><td>${ tprofile[0].style }</td></tr>

              </table>
              <hr>
              <br>
              
              <h5>과외가능 시간/요일</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	<tr><td>${ tprofile[0].day } / ${ tprofile[0].time }</td></tr>

               	
              </table>
              <hr>
              <br>
              
               <h5>온라인 가능</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	
               	<tr><td>${ tprofile[0].online_ok }</td></tr>
            

              </table>
              <hr>
              <br>
              
              <h5> 1회당 수업시간(분) 및 수업 횟수(월)</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	
               	<tr><td>${ tprofile[0].class_min }분 / ${ tprofile[0].class_times }회 </td></tr>
            

              </table>
              <hr>
              <br>
              
              
             </div>
          </c:if>
             </div>

         <Br><Br>
        
            <c:if test="${ !empty requestScope.tpic }">

		 <div class="pic_video" style="width:960px; height:500px; margin:0px; padding:0px">
        	
        	     
              <h5>사진</h5>
              <Br>
              
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">

               	
               	<tr><td><img src="${ pageContext.servletContext.contextPath }/resources/images/mypage/tutorImg/${ tpic[0].pic }" class="profilePic" >
		</td></tr> 
              

              </table>
          
               
               <hr>
               <br>
               
              
             
              
             </div>

             </c:if>
             <h5>${ message }</h5>
             <c:if test="${ !empty requestScope.rl }">

              <div class="dreview" style="width:960px; height:800px; margin:0px; padding:0px">
        	
        	
             <div class="reviews">
             <h5>리뷰</h5>
                
                
      <c:choose>
              			  				<c:when test = "${ avgScore == 0 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 1 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 2 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 3 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 4 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 5 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 6 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 7 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 8 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 9 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ avgScore == 10 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  		        </c:when>
              			  		        
 										</c:choose>

                	  &nbsp;  <span class="point" style="font-size:18px"> ${ avgScore }  </span>
                	  <span class="reviewcount" style="font-size:13px;"> ${ reviewCount }(갯수)</span>

                	 
               
                
            
             </div>
             
        	     
              <div class="">
              <Br><Br>
              <c:forEach items="${requestScope.rl }" var="rl">
              <ul style="list-style:none; marign:0px;padding:0px; margin-right:10px;">
              		<li class="">
              			<table class="intro" style="width:990px;height:50px; margin:0px; padding:0px;" >
              			  
              			  <tr><td>${ rl.rev_datetm }</td></tr>
              			  <tr><td> <c:choose>
              			  				<c:when test = "${ rl.score == 0 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 1 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 2 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 3 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 4 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 5 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 6 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 7 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 8 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 9 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/emptyStar.png"class="emptyStar">
              			  		        </c:when>
              			  		        <c:when test = "${ rl.score == 10 }">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  				<img src="${ pageContext.servletContext.contextPath }/resources/images/star.png"class="emptyStar">
              			  		        </c:when>
              			  		        
 										</c:choose>
         
 &nbsp;  <span class="point" style="font-size:18px"> ${ rl.score }</span><br>

</td></tr>

                	 



                	

                		<tr><td>${ rl.rev_content }</td></tr>
                		
                			
              			</table>
     
              			<c:if test="${ !empty sessionScope.loginMember && loginMember.user_position eq 'S' }">
              			<c:if test="${ rl.student_no eq loginMember.user_no }"> 
               <c:url var="vdel" value="/vdelete.do">
	    	<c:param name="student_no" value="${ loginMember.user_no }"/>
	    	<c:param name="rev_no" value="${ rl.rev_no }"/>
	    	<c:param name="user_no" value="${ tutorno.user_no }"/>
	    	</c:url>
	         <button onclick="deleteReview();" style="margin:0;width:80px;height:30px;margin-left:525px; border: none;border-radius:10px;text-decoration: none;background-color:#fff; color:#20c997; font-size:15px;">리뷰 삭제</button>	
               <script>
               function deleteReview(){

              	 if (confirm("정말 삭제하시겠습니까??") == true){    //확인

              	     location.href="${ vdel }";

              	 }else{   //취소
         	     return;
  		 }
  		 }
               </script>
               
               </c:if>
               
             </c:if>
              		</li>
               </ul>
          </c:forEach>
              
              </div>
               <hr>
               <br>
               <c:if test="${ !empty sessionScope.loginMember && loginMember.user_position eq 'S' }">
               <c:if test="${ !empty reviewPay.pay_no  && tutorno.user_name eq reviewPay.tutor_name}">
              <c:url var="rform" value="/reviewform.do">
	    	<c:param name="user_no" value="${ tutorno.user_no }"/>
	    	<c:param name="student_no" value="${ loginMember.user_no }"/>
	    	<c:param name="pay_no" value="${reviewPay.pay_no }"/>
	   		</c:url>
               <button onclick="location.href='${ rform }'"style="margin:0;width:100px;height:50px;margin-left:40%; border: none;border-radius:20px;text-decoration: none;background-color:#20c997; color:white">리뷰 달기</button>
            </c:if>
             </c:if>
             </div>
             
             </c:if>
           
     
             <c:if test="${ !empty requestScope.tutorqna }">
              <div class="tqna" style="width:960px; height:600px; margin:0px; padding:0px">
         
        	 
              <h5>질문답변</h5>
              <Br> 
              
              <h5>Q. 서비스가 시작되기 전 어떤 절차로 진행하나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
             
				<tr><td>${ tutorqna.answer1 }</td></tr>
           
              </table>
               <hr>
               <br>
               
                <h5>Q. 어떤 서비스를 전문적으로 제공하나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ tutorqna.answer2 } </td></tr>
              </table>
               <hr>
               <br>
               
                <h5>Q. 서비스의 견적은 어떤 방식으로 산정 되나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ tutorqna.answer3 }</td></tr>
              </table>
               <hr>
               <br>
               
                <h5>Q. A/S 또는 환불 규정은 어떻게 되나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ tutorqna.answer4 }</td></tr>
               	   
              </table>
           
               <hr>
               <br>
          <c:if test="${ loginMember.user_position eq 'T' && loginMember.user_no eq tutorno.user_no}"> 
	    <c:if test="${ !empty tutorqna.answer1 || !empty tutorqna.answer2 || !empty tutorqna.answer3 || !empty tutorqna.answer4}">
	       <c:url var="uqna" value="/uqnaform.do">
	    	<c:param name="tutor_no" value="${ loginMember.user_no }"/>
	    	<%-- <c:param name="student_no" value="${ loginMember.user_no }"/> --%>
	    	
	    </c:url>
	    <button onclick="location.href='${ uqna }'"style="margin:0;width:100px;height:50px;margin-left:40%; border: none;border-radius:20px;text-decoration: none;background-color:#20c997; color:white">수정 하기</button>
	    </c:if>
	    
	   
           </c:if>
            <%-- </c:if> --%>
              
       
              
             </div>
             
             </c:if>
             
                 
								
							
								
             <%--    <c:if test="${ empty requestScope.tutorqna && loginMember.user_position eq 'T'}">
	       <c:url var="qnaf" value="/qnaform.do">
	    	<c:param name="tutor_no" value="${ loginMember.user_no }"/>
	    	<c:param name="student_no" value="${ loginMember.user_no }"/>
	    </c:url>
	    
	    <button onclick="location.href='${ qnaf }'"style="margin:0;width:100px;height:50px;margin-left:40%; border: none;border-radius:20px;text-decoration: none;background-color:#20c997; color:white">질문 작성</button>
            </c:if> --%>
            </div>
      
          </div>
      
        </div>
       
        

     
  </section>

  <!-- end about section -->

  <!-- info section -->
  
  <!-- end info section -->

  <!-- footer section -->
   <c:import url="/WEB-INF/views/common/footer.jsp" />
  <!-- footer section -->

  <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.js"></script>

</body>

</html>