<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="src\main\webapp\WEB-INF\lib\bootstrap.css">
<script src="src/main/webapp/WEB-INF/lib/bootstrap.js">
	
</script>
<style>
h1 {
	color: white;
	text-align: center;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


	${successMsg}
	<c:if test=" ${not empty error }">
		<jsp:include page="login.jsp"></jsp:include><br>
	</c:if>
	${error}
	<c:if test="${showloginpage}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<c:if test="${showregistrationpage}">
		<jsp:include page="registration.jsp"></jsp:include>
	</c:if>


	<jsp:include page="Coroseul.jsp"></jsp:include>
	<jsp:include page="belowimages.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>