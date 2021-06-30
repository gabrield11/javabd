<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.List" %>
<%@ page import="models.Product" %>


<% 
List<Product> data = (List<Product>) request.getAttribute("dados");
%>



<c:forEach var="p" items="{data}">
<c:out value="${p.id} "/>
<c:out value="${p.name} "/>
<c:out value="${p.price} "/>
<c:out value="${p.description} "/>
<c:out value="${p.imageUri} "/>

</c:forEach>


</body>
</html>