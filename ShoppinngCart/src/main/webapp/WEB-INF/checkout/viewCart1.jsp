<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<html>
<head>
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body> 
     <div class="container">
        
<div ng-app="myApp" ng-controller="customersCtrl">
          <h2>Order Details</h2>
 
 <div class="container">
    <div class="row col-md-8">               
<table class="table table-hover table-bordered">
  <tr>
       <th>Product Name</th>
       <th>QTY</th>
       <th>Price</th>
       
            
  </tr>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.chairName}}</td>
    <td>{{x.quantity}}</td>
    <td>{{x.chairPrice | currency}}</td>
  </tr>
    <tr>
                        <th></th>
                        <th></th>
                        <th>Order Total: {{calGrandTotal() | currency}}</th>
                        
                    </tr>
</table>
                       
</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("listone")
    .then(function (response) {$scope.names = response.data;});


$scope.calGrandTotal = function(){
    var grandTotal=0;
    

    for(var i=0; i<$scope.names.length; i++)
    {
        grandTotal+=$scope.names[i].chairPrice;
    }

    return grandTotal;
};
});

</script>
</div>
</body>
</html>



