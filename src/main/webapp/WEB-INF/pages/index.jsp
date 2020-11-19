<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
 <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/starter-template.css" rel="stylesheet">
 <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Start Bootstrap</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">A Bootstrap 4 Starter Template</h1>
        <p class="lead">Complete with pre-defined file paths and responsive navigation!</p>
        <ul class="list-unstyled">
          <li>Bootstrap 4.5.3</li>
          <li>jQuery 3.5.1</li>
         <li><a href="${pageContext.request.contextPath}/displayUsers">Display users with embedded database</a></li>
         <li><a href="${pageContext.request.contextPath}/displayUsersMySQL">Display users with MySQL database</a></li>
         <li><a href="${pageContext.request.contextPath}/newblogpost.html">new blog post</a></li>
        
        </ul>
      </div>
    </div>
  </div>


  </body>
</html>