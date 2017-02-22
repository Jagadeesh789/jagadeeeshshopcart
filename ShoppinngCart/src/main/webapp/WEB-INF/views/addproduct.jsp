<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Add a product</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home">Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="viewProducts">Manage Products</a></li>
      <li><a href="ManageCategory">Manage Categories</a></li>
      <li><a href="viewSuppliers">Manage Suppilers</a></li>
      <li><a href="ManageUsers">Manage Users</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<h2>Add a Product</h2>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addproduct" value="addproduct"></c:url>
   <form:form commandName="Product" method="post" action="Bike Zone" enctype="multipart/form-data">
       <table class="table table-bordered" >
           <tr><td><form:label path="Name">Bike Name :</form:label></td>
               <td><form:input path="Name"/>
               <font color="red"><form:errors path="Name"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="Description">Bike Description :</form:label></td>
               <td><form:input path="Description"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="Price">Bike Price:</form:label></td>
               <td><form:input path="Price"/>
               <font color="red"><form:errors path="Price"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="primarymaterial">Bike Primary Material :</form:label></td>
               <td><form:input path="primarymaterial"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="style">Bike Style :</form:label></td>
               <td><form:input path="style"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="warranty">Bike Warranty :</form:label></td>
               <td><form:input path="warranty"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="capacity">Bike Capacity :</form:label></td>
               <td><form:input path="capacity"/>
               <font color="red"><form:errors path="Description"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="img">Bike Image:</form:label></td>
               <td><form:input path="img" type="file"/>
               <font color="red"><form:errors path="img"></form:errors></font></td>  
           </tr>
           <tr><td><form:label path="suppiler">Suppiler Name:</form:label></td>
               <td><select name="Suppiler.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Suppiler" items="${suppilers}">
   				 <option value="${Suppiler.id}">${Suppiler.supname}</option>
    		</c:forEach>
    		</select></td></tr>
             <td><input type="submit" value="Add Bike" class="btn-success"/></td>
       </table>
   </form:form> 
   </div>
   	<footer class="container-fluid text-center">
		<p>All Rights Reserved</p>
		<P>2016</P>
	</footer>
   
</body>
</html>