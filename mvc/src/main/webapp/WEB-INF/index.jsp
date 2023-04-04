<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<title>All Books</title>
</head>
<body class="container border">
   
<h1>All Books</h1>
<table class="table table-hover">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Language</th>
            <th>Number of Pages</th>
        </tr>
    </thead>
    <tbody>
         <!-- build  JSTL forEach loop to render each row of the table with the information about a book. -->
         
         <!-- c:forEach to access all objects in the ArrayList in view model -->
         
		<c:forEach var="book" items="${books}">
		
			<!-- create a new row with name and price -->
				
        	<tr>
        		<td>
        			<!-- access values of each object using dot notation. They keys for each value if you remember correctly is in the Item class in the models package -->
        			<c:out value="${book.id}"></c:out>
        		</td>
        		<td>
        			
        			<!-- Ninja Bonus: make the title for each book an anchor tag that navigates to the details for the book using "/books/2" route -->
        			
        			<a href="/books/${book.id}">${book.title}</a>
        		</td>
        		<td>
        			<c:out value="${book.language}"></c:out>
        		</td>
        		<td>
        			<c:out value="${book.numberOfPages}"></c:out>
        		</td>
        	</tr>
    	</c:forEach>
    </tbody>
</table>

</body>
</html>