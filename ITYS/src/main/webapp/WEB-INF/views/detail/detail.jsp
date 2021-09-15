<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="reviewCount" value="${ requestScope.reviewCount }" />
<c:set var="reviewCount1" value="${ requestScope.reviewCount1 }" />
<c:set var="avgScore" value="${ requestScope.avgScore }" />
<c:set var="avgScore1" value="${ requestScope.avgScore1 }" />
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
<script type="text/javascript">



$(function(){
	//이 영역 안에서 작성된 이벤트핸들러는 자동 실행 준비상태가 됨
	$("#d-d").on("click", function(){
		//여러개의 태그중에 체크상태가 바뀐 태그 처리
		$("#d-d").each(function(index){
			//radio 순번대로 하나씩 checked 인지 확인함
			if($(this).is("click")){
				$("#tutor-info").hide();
			}else{
				$("#pic_video").hide();
				$("#dreview").show();
			}
		});
	});
});

/*  $("#d-d").eq(this).on("click",function(){
    //idx = 클릭한 li가 몇번째 요소인지
    $("#tutor-info").css("display","block");
    $("#pic_video").css("display","none"); //모든 .bk 끄기
  	$("#dreview").css("display","none");
   //.bk 중에 idx와 같은 순서의 요소 fadeIn.



  });  */


 /* $(function(){	
	$("#d-d").eq(0).click(function(){
		$("#tutor-info").show();
		$("#pic_video").hide();
		$("#dreview").hide();
		
	});
}); */

</script>
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
          <img src="${ td.pic }" class="profilePic" >
          </div>
         <div class="info-title">
        
        	<div class="info-head">
        		<div class="head" style="font-size:30px; text-align:center; margin-top:5px">
        		
                   선생님 이름  ${ td.user_name } &nbsp; &nbsp;  &nbsp; 
                   <c:url var="ts" value="/tsave.do">
					<c:param name="student_no" value="1" />
					<c:param name="tutor_no" value="2"/>
				</c:url> 
                      <a href="${ ts }" class="tsave"><img src="${ pageContext.servletContext.contextPath }/resources/images/select_off.png" class="select-heart" maring-left="10px" ></a>
          		</div>
          		<script>
          		
          		</script>
          		
             <div class="stitle">
             	<div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/uni.png" class="usp" >
             <span class="uni" style="width:30px; height:30px; margin-left:10px; ">
                           학교 ${ td.l_grd }
             	</span>
             	</div>
              </div>
              
             <div class="stitle">
             <div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/sub.jpg" class="usp" >
              <span class="sub" style="width:30px; height:30px; margin-left:10px;">
                           과목 ${ td.sub_name }
             	</span>
             </div>
             </div>
             
             <div class="stitle">
             <div class="sstitle">
             <img src="${ pageContext.servletContext.contextPath }/resources/images/place.png" class="usp" >
              <span class="place" style="width:30px; height:30px; margin-left:10px;">
                           지역 ${ td.area }
             	</span>
             	<button onclick="moveChatting();"style="margin:0;width:100px;height:50px;margin-left:525px; border: none;border-radius:10px;text-decoration: none;background-color:#20c997; color:white">채팅하기</button>
              <script>
              function moveChatting(){
              location.href = "${ pageContext.servletContext.contextPath }/openChatting.do";
              }
              </script>
             </div>
             </div>
          
             <div class="stitle">
               <div class="sstitle">
             <div class="review">
                <ul class="Star1">
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
                <c:url var="tp" value="/tprofile.do">
					<c:param name="user_no" value="2" />
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tp }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">프로필</a></li>
                	 <c:url var="tv" value="/tpic.do">
					<c:param name="user_no" value="2" />
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tv }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">사진</a></li>
                	<c:url var="tr" value="/treview.do">
					<c:param name="user_no" value="2" />
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tr }" style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;" >리뷰</a></li>
                	<c:url var="tq" value="/tqna.do">
					<c:param name="user_no" value="2" />
				</c:url>
                	<li class="d-d"  id="d-d"><a href="${ tq }"  style="width:300px;border-top:0px;border-left:0px;border-right:0px;background:white; display:block; text-align:center;color:black;outline:none;">질문/답변</a></li>
                
                  </ul>
      
             </div>
          
            <div class="heading_container">
            
             <div class="tutor-info" style="width:960px; height:1800px; margin:0px; padding:0px">
             <form>
              <h5>한줄소개</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>
						${ td.intro } </td></tr>
              </table>
               <hr>
               <br>
               
              <h5>학교</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.l_grd }</td></tr>
              </table>
              <hr>
              <br>
              
     
              
              <h5>과외가능지역</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.area }</td></tr>
              </table>
              <hr>
              <br>
              
              <h5>성격</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               <c:forEach items="${ requestScope.pd }" var="p">
               	<tr><td>${ p.type_per }</td></tr>
               	</c:forEach>
              </table>
              <hr>
              <br>
              
              <h5>과목</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.sub_name }</td></tr>
              </table>
              <hr>
              <br>
              
              <h5>수업료</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.min_pay }</td></tr>
              </table>
              <hr>
              <br>
              
              
              
              <h5>수업방식</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.style }</td></tr>
              </table>
              <hr>
              <br>
              
              <h5>과외가능 시간/요일</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.day } / ${ td.time }</td></tr>
               	
              </table>
              <hr>
              <br>
              
              <h5>나이</h5>
              <Br>
              <table class="intro" style="width:990px;height:50px; margin:0px; padding:0px;">
               	<tr><td>내용</td></tr>
              </table>
              <hr>
              <br>
              </form>
              
             </div>
             </div>
          
         <Br><Br>
            
		 <div class="pic_video" style="width:960px; height:200px; margin:0px; padding:0px">
        	
        	     
              <h5>사진</h5>
              <Br>
              <table class="intro" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.pic }</td></tr>
              </table>
               <hr>
               <br>
               
              
             
              
             </div>
             
              <div class="dreview" style="width:960px; height:1800px; margin:0px; padding:0px">
        	
        	
             <div class="reviews">
             <h5>리뷰</h5>
                
                
      <c:choose>
              			  				
              			  		        <c:when test = "${ avgScore1 == 1 }">
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
              			  		        <c:when test = "${ avgScore1 == 2 }">
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
              			  		        <c:when test = "${ avgScore1 == 3 }">
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
              			  		        <c:when test = "${ avgScore1 == 4 }">
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
              			  		        <c:when test = "${ avgScore1 == 5 }">
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
              			  		        <c:when test = "${ avgScore1 == 6 }">
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
              			  		        <c:when test = "${ avgScore1 == 7 }">
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
              			  		        <c:when test = "${ avgScore1 == 8 }">
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
              			  		        <c:when test = "${ avgScore1 == 9 }">
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
              			  		        <c:when test = "${ avgScore1 == 10 }">
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
                	  &nbsp;  <span class="point" style="font-size:18px"> ${ avgScore1 }</span>
                	  <span calss="reviewcount" style="font-size:13px;"> ${ reviewCount1 }(갯수)</span>
                	 
               
                
            
             </div>
             
        	     
              <div class="">
              <Br><Br>
              <c:forEach items="${requestScope.rl }" var="rl">
              <ul style="list-style:none; marign:0px;padding:0px; margin-right:10px;">
              		<li class="">
              			<table class="intro" style="width:990px;height:50px; margin:0px; padding:0px;" >
              			  
              			  <tr><td>${ rl.rev_datetm }</td></tr>
              			  <tr><td> <c:choose>
              			  				
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
          
 &nbsp;  <span class="point" style="font-size:18px"> ${ rl.score }</span>
</td></tr>

                	 


                	 <br>
                		<tr><td>${ rl.rev_content }</td></tr>
                		
                			
              			</table>
              			<%-- <c:if test="${ !empty sessionScope.loginMember }"> --%>
               <c:url var="vdel" value="/vdelete.do">
	    	<c:param name="rev_no" value="26"/>
	    	
	    	</c:url>
	   
               <a href="${ vdel }" style="margin:0;width:80px;height:30px;margin-left:525px; border: none;border-radius:10px;text-decoration: none;background-color:#fff; color:#20c997; font-size:15px;">리뷰 삭제</a>	
              <%-- </c:if> --%>
              		</li>
               </ul>
               </c:forEach>
              
              </div>
               <hr>
               <br>
               <button onclick="moveReviewForm();"style="margin:0;width:150px;height:50px;margin-left:40%; border: none;border-radius:20px;text-decoration: none;background-color:#20c997; color:white">리뷰 달기</button>
              <script>
              function moveReviewForm(){
              location.href = "${ pageContext.servletContext.contextPath }/reviewform.do";
              }
              </script>
              
            
              
             </div>
              <div class="tqna" style="width:960px; height:1800px; margin:0px; padding:0px">
        	
        	     
              <h5>질문답변</h5>
              <Br>
              <h5>Q. 서비스가 시작되기 전 어떤 절차로 진행하나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td></td></tr>
              </table>
               <hr>
               <br>
               
                <h5>Q. 어떤 서비스를 전문적으로 제공하나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td></td></tr>
              </table>
               <hr>
               <br>
               
                <h5>Q. 서비스의 견적은 어떤 방식으로 산정 되나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.pic }</td></tr>
              </table>
               <hr>
               <br>
               
                <h5>Q. A/S 또는 환불 규정은 어떻게 되나요?</h5>
              <table class="qna" style="width:960px;height:50px; margin:0px; padding:0px;">
               	<tr><td>${ td.pic }</td></tr>
              </table>
               <hr>
               <br>
               
              
             
              
             </div>
             
             
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