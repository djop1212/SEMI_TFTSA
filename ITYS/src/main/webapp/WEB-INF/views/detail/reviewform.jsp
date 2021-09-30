<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


  
  <!-- Basic -->

  <title>Joson</title>
   <script type="text/javascript"src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!--   <script src="http://code.jquery.com/jquery-1.7.2.min.js "></script>   -->

<!-- <script src="https://kit.fontawesome.com/d8788f784e.js" crossorigin="anonymous"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
 <script type="text/javascript"src="${ pageContext.servletContext.contextPath }/resources/js/jquery.barrating.min.js"></script>
<%-- <link rel="stylesheet" type="text/css" href ="${ pageContext.servletContext.contextPath }/resources/js/fontawesome-stars.css">

  --%>
<!--  <script src="http://code.jquery.com/jquery-latest.min.js"> -->
    <%--     <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.raty.js"></script>
<link rel="stylesheet" type="text/css" href ="${ pageContext.servletContext.contextPath }/resources/js/jquery.raty.css">
 --%>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <!-- bootstrap core css -->
<style>
/*  .starR1{
    
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;

}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;} 
 */



/*  .br-theme-fontawesome-stars-o .br-widget{
  height: 28px;
  white-space: nowrap;

}


.br-theme-fontawesome-stars-o .br-widget a {
  font: normal normal normal 14px/1 FontAwesome;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  text-decoration: none;
  margin-right: 2px;
  

}

.br-theme-fontawesome-stars-o .br-widget a{
  content: '\f006';
  color: #EDB867;
  
   
}
.br-theme-fontawesome-stars-o .br-widget a.br-active {
  content: '\f005';
  color: #EDB867;
}


.br-theme-fontawesome-stars-o .br-widget a.br-selected:after {
  content: '\f005';
  color: #EDB867;
      background-position:-10px 0;
}
.br-theme-fontawesome-stars-o .br-widget a.br-fractional:after {
  content: '\f123';
  color: #EDB867;
}
.br-theme-fontawesome-stars-o .br-widget .br-current-rating {
  display: none;
}
.br-theme-fontawesome-stars-o .br-readonly a {
  cursor: default;
}
.br-theme-fontawesome-stars-o .br-reverse a.br-fractional {
  display: inline-block;
  transform: scaleX(-1);
  -moz-transform: scaleX(-1);
  -webkit-transform: scaleX(-1);
  filter: FlipH;
  -ms-filter: "FlipH";
}
@media print {
  .br-theme-fontawesome-stars-o .br-widget a:after {
    content: '\f006';
    color: black;
     background-position:0px 0;
  }

  .br-theme-fontawesome-stars-o .br-widget a.br-active:after,
  .br-theme-fontawesome-stars-o .br-widget a.br-selected:after {
    content: '\f005';
    color: yellow;
     background-position:0px 0;
  }

  .br-theme-fontawesome-stars-o .br-widget a.br-fractional:after {
    content: '\f005';
    color: yellow;
  }
}  */
S .br-theme-fontawesome-stars-o .br-widget {
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
  
    <!-- header section strats -->
      <div class="hero_area">
  <c:import url="/WEB-INF/views/common/menubar.jsp" ></c:import>
  </div>
   
    <!-- end header section -->
  

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <div class="row">
   
        <div class="col-md-8">
          <div class="login_form" style="width:500px;margin-left:310px;">
            <h5>
              리뷰점수
            </h5>
            <form action="reviewformsubmit.do" method="post">

<select id="example">
	<option value="1" >1</option>
	<option value="2" >2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>

	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
</select>

           <!-- <div class="starRev" align="center" style="margin-left:150px;">
  
  <span class="starR1 on" >1</span>
  <span class="starR2">2</span>
  <span class="starR1">3</span>
  <span class="starR2">4</span>
  <span class="starR1">5</span>
  <span class="starR2">6</span>
  <span class="starR1">7</span>
  <span class="starR2">8</span>
  <span class="starR1">9</span>
  <span class="starR2">10</span>
</div>  -->
<span id="ex" class="ex">  </span> &nbsp;점
 <input type="hidden" name="score" id="score" > 
 <input type="hidden" name="pay_no" id="pay_no" value="${pay_no }">
  <input type="hidden" name="student_no" id="student_no" value="${ loginMember.user_no }">
  <input type="hidden" name="tutor_no" id="tutor_no" value="${tutorno.user_no }">
<input type="hidden" name="user_no" id="user_no" value="${tutorno.user_no }">
<script type="text/javascript">
$('#example').barrating('show', {
	  theme: 'fontawesome-stars-o',
	 
	  onSelect: function(value, text, event) {
	    if (typeof(event) !== 'undefined') {
	      // rating was selected by a user
	      
	      console.log(event.target);
	      $("#score").val(value);
	      $("#ex").html(value);
	    } else {
	      // rating was selected programmatically
	      // by calling `set` method
	    }
	  }
	});

 /* $('.starRev span').click(function(score, evt){
 $(this).parent().children('span').removeClass('on');
 $(this).addClass('on').prevAll('span').addClass('on');
 $("#starRating").val(score);
 $("#displayStarRating").html(score);
 $("#score").html(".starRev span");
 return false;
}); */
 </script>
 <br><br>
              
              작성하기
              <div>
              
                <textarea style="height: 40px;
    width: 100%;
    height: 150px;
    padding-left: 15px;
    border: none;
    outline: none;
    border-radius: 5px;
    margin: 10px 0;

		" class="rev_content" name="rev_content"></textarea>

              </div>
              <button type="submit">등록하기</button>
              <button type="submit">취소하기</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end login section -->

  <!-- info section -->
  <c:import url="/WEB-INF/views/common/footer.jsp" />


</body>

</html>