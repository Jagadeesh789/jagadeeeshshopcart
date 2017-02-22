<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<jsp:useBean id="now" class="java.util.Date" />
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
</head>

<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
           <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="user" class="form-horizontal">
                <div ng-app="myApp" ng-controller="customersCtrl">

                    <div class="well col-xs-40 col-sm-40 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1>Receipt</h1>
                       </div>
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <address>
                                    <strong>Billing Address</strong><br/>
                                    ${user.name},                                
                                    ${user.city},                                
                                    ${user.state}
                                  </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br/>
                                    ${user.name},
                                    ${user.apartmentNumber},
                                    ${user.streetName},
                                    ${user.city},
                                    ${user.state},
                                    ${user.country},
                                    ${user.zipCode} 
                                   <br>
                                </address>
                            </div>
                        </div>
                         <jsp:include page="viewCart1.jsp" />  
                         <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-default"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                    </div>
                          
                        
          </div></div></form:form>