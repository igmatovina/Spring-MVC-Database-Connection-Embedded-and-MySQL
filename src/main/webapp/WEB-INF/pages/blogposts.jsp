<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Post</title>
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
        <h1>blog post</h1>
        <c:if test="${empty blogposts}">
        	No Blog post is found <br/>
        </c:if>
      <br/>
      <form action="${pageContext.request.contextPath}/searchByTitle" method="post">
      <table>
   		<tr><td>Title</td><td><input  name="title" type="text"/></td></tr>
   		<tr><td colspan="2"><input  type="submit" value="Search"/></td></tr>
   		
      </table>
      </form>
 
        <c:if test="${not empty blogposts}">
        	<table style="width:650px" class="table table-striped">
	        	<c:forEach var="blogpost" items="${blogposts}">
		        	<tr>
			        	<td>Blog post id</td>
			        	<td><c:out value="${blogpost.id}"></c:out></td>
		        	</tr>
		        	<tr>
			        	<td>title</td>
			        	<td><c:out value="${blogpost.title}"></c:out></td>
		        	</tr>
		        	<tr>
			        	<td>Content</td>
			        	<td><div style = "white-space: pre"><c:out value="${blogpost.content}"></c:out></div></td>
		        	</tr>
		        	<tr>
			        	<td>Draft</td>
			        	<td><c:out value="${blogpost.draft}"></c:out></td>
		        	</tr>
		        	<tr><td colspan="2"></td></tr>
		        	<tr><td colspan="2"></td></tr>
        		</c:forEach>
        	 </table>
        </c:if>
        <a href="${pageContext.request.contextPath}/draftblogposts">Find draft blog posts</a>
 
  		<a href="${pageContext.request.contextPath}">Back</a><br>
        <a href="${pageContext.request.contextPath}/newblogpost.html">Enter a new blog post</a>
      
      </div>


  </body>
</html>