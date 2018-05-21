<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Merchant Login Panel</title>
		<link rel="stylesheet" href="${path}/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
		<script type="text/javascript" src="${path}/webjars/jquery/3.2.0/jquery.min.js"></script>
		<script type="text/javascript" src="${path}/jquery.boot.js"></script>
	</head>
	<body>
		<form id="loginForm">
	    <table>
	    <tr>
	    <td>Email</td>
	    <td><input id="email" type="text" name="email"></td>
	    </tr>
	    <tr>
	    <td>Password</td>
	    <td><input id="password" type="password" name="password"></td>
	    </tr>
	    <tr>
	    <td></td>
	    <td><input type="button" value="login" onclick="Login()"/></td>
	    </tr>
	    </table>
	    </form>
	</body>
</html>
    


