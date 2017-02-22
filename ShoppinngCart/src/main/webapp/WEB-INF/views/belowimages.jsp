<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
  }
  </style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div class="container">
<br>
  <div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="src/main/webapp/WEB-INF/resources/images/" target="_blank">
          <img src="<c:url value="/resources/images/image1.jpg"/>">
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="src/main/webapp/WEB-INF/resources/images/"  target="_blank">
          <img src="<c:url value="/resources/images/image2.jpg"/>">
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="src/main/webapp/WEB-INF/resources/images/"  target="_blank">
          <img src="<c:url value="/resources/images/image4.jpg"/>">
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="src/main/webapp/WEB-INF/resources/images/"  target="_blank">
          <img src="<c:url value="/resources/images/image6.jpg"/>">
        </a>
      </div>
    </div>
  </div>
</div>

</body>
</html>


