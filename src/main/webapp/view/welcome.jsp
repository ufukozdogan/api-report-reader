<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="${path}/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
		<script type="text/javascript" src="${path}/webjars/jquery/3.2.0/jquery.min.js"></script>
		<script type="text/javascript" src="${path}/jquery.boot.js"></script>
		<title>Welcome</title>
		<style>
			.row {
				margin-top: 50px; margin-left: 0px; margin-right: 0px;
			}
			.menu {
				height: 100%; position:fixed; background-color: #f8f8f8;
			}
			.menu .navbar-nav li{
				width: 100%; border-bottom: 1px solid #e7e7e7;
			}
		</style>
	</head>
	<body>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form method="post" id="logoutForm" action="${path}/logout">
				<input type="hidden" name="${_csrf.parameterName}" value ="${_csrf.token}"/>
			</form>
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="javascript:void(0);">API Report Reader</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${path}"><span class="glyphicon glyphicon-home"></span> Home</a></li>
						<li><a href="javascript:void(0);"><span class="glyphicon glyphicon-info-sign"></span> About</a></li>
						<li><a href="javascript:void(0);"><span class="glyphicon glyphicon-phone-alt"></span> Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="javascript:void(0);" onclick="document.forms['logoutForm'].submit()">Welcome ${pageContext.request.userPrincipal.name} | Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="menu navbar navbar-default">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<li><a href="javascript:void(0);" id="userList"><span class="glyphicon glyphicon-user"></span>User List</a></li>
						<li><a href="javascript:void(0);" id="addressList"><span class="glyphicon glyphicon-info-sign"></span>Address List</a></li>
					</ul>
				</div>
			</div>
			<div class="container-fluid">
				<div class="panel-body" style="margin-left: 210px;">
					<c:forEach begin="0" end="3" varStatus="loop">
						<div class="col-md-12">
							<h2>${heading}</h2>
							<p class="text-justify">${description}</p>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">
				<div class="col-md-10 navbar-text text-center">Ufuk Ozdogan's Homework for Bumin Yazilim, 2018</div>		
			</div>		
		</div>
		</c:if>
	</body>
</html>