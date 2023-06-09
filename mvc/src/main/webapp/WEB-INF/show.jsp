<!-- Rendering Books practice assignment tasks below -->

<!-- create a new .jsp file in webapp/WEB-INF called show.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- include the relevant JSP and JSTL dependencies -->
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<title>Rendering Books - <c:out value="${book.title}"/></title>
</head>
<body>

	<div class="card">
		<h1 class="card-header">${book.title}</h1>
		<div class="card-body">
			<p>Description: <c:out value="${book.description}"/></p>
			<p>Language: <c:out value="${book.language}"/></p>
			<p>Number of Pages: <c:out value="${book.numberOfPages}"/></p>
		</div>
		
	</div>

</body>
</html>