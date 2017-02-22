<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Product Details</title>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>

    </ul>
    <ul class="nav navbar-nav navbar-right">
    
    <li><a href="#" style ="color:white;">Welcome.... <%=session.getAttribute("loggedInUser") %></a></li>
      
      <li><a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>

</head>
<h2>Product Details</h2>
 
      
            <table class="table table-hover table-bordered">
            <tr><td rowspan="5">
            <img src='<x:url value="resources/images/${product.image}"/>'/></td></tr>
            
            <tr><td><b>${product.id}</b></td></tr>
            <tr><td><b>${product.name}</b></td></tr>
            <tr><td><b>${product.price}</b></td></tr>
            <tr><td><b>${product.description}</b></td></tr>
            </table>
            <sec:authorize access ="hasRole('ROLE_USER')">
      <a href="viewCart?id=${product.id}" class="btn btn-info">Add cart</a>
    </sec:authorize>
      	<footer class="container-fluid text-center">
		<p><b>All Rights Reserved</b></p>
		<P>2016</P>
	</footer>
      
   </body>
</html>
