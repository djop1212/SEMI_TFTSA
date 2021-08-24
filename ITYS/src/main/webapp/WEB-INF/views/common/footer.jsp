<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<!-- info section -->
  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_menu">
            <h5>
              QUICK LINKS
            </h5>
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="main.do">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.do"> About </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="course.do"> Courses </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="event.do"> Events </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.do">Contact us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.do">Login</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-3">
          <div class="info_course">
            <h5>
              TOP RATED COURSE
            </h5>
            <p>
              There are many variations of passages of Lorem Ipsum available,
              but the majority have suffered alteration in some form, by
              injected humou
            </p>
          </div>
        </div>

        <div class="col-md-5 offset-md-1">
          <div class="info_news">
            <h5>
              FOR ANY QUERY, PLEASE WRITE TO US
            </h5>
            <div class="info_contact">
              <a href="">
                Location
              </a>
              <a href="">
                demo@gmail.com
              </a>
              <a href="">
                Call : +01 1234567890
              </a>
            </div>
            <form action="">
              <input type="text" placeholder="Enter Your email" />
              <button>
                Subscribe
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      &copy; 2021 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </footer>

  <footer class="container-fluid footer_section">
  
    <p>
      Distributed By 
      <a href="https://themewagon.com/">Themewagon</a>
    </p>

</footer>
  <!-- footer section -->

  <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.js"></script>

</body>

</html>