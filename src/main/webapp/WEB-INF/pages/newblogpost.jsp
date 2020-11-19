<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Blog Post</title>
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
        <h1>New blog post</h1>
        <c:if test="${not empty message }">
        	${message} <br/>
        </c:if>
        <form action="${pageContext.request.contextPath}/saveBlogPost" method="post">
        	<div class="form-group">
        	    <label for="title">Title</label>
        	    <input type="text" name="title" required autofocus>
        	</div>
        	<div class="form-group" style="width:650px">
        	    <label for="content">Content</label>
        	    <textarea name="content" class="form-control" id="contentTextarea" maxlength="4000" rows="10" required></textarea>
			</div>
        	<div class="form-check">
    			<input type="checkbox" name="draft" class="form-check-input" id="draft">
    			<label class="form-check-label" for="exampleCheck1">Draft</label>
  			</div>
        		<button type="submit" class="btn btn-primary">save</button>
        	</form>

  		<a href="${pageContext.request.contextPath}">Back</a>
        
      </div>


  </body>
</html>