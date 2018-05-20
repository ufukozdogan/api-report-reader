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
		<style type="text/css">
			body {
				background:url("https://cn.pling.com/img/5/2/c/e/dc7852cafb7ea5418e465eb42745d04482cb.jpg") no-repeat center center fixed;
				background-size: cover;
				display: flex;
				align-items:center;
				height: 100vh;
			}
			input {
				text-align: center;
			}
			.centertext {
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading centertext">
							<strong>Merchant Login Panel</strong>
						</div>
						<div class="panel-body">
							<form action="${path}/user/login" method="POST" class="form-signin form-horizontal">
								<c:if test="${error != null}">
									<div class="alert alert-danger centertext">
										<strong>${error}</strong>
									</div>
								</c:if>
								<c:if test="${message != null}" >
									<div class="alert alert-success centertext">
										<strong>${message}</strong>
									</div>
								</c:if>
								
								<div class="form-group">
									<div class="col-md-12">
										<div class="input-group- input-group-md">
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-user"></span>
											</span>
											<input type="text" class="form-control" name="username" placeholder="E-Mail"/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="input-group- input-group-md">
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</span>
											<input type="password" class="form-control" name="password" placeholder="Password"/>
										</div>
									</div>
								</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								<div class="form-group">
									<div class="col-md-12">
										<button type="submit" class="btn btn-default btn-block">
											<span class="glyphicon glyphicon-log-in"></span> Login
										</button>
									</div>
								</div>
					    	</form>
						</div>	
					</div>
				</div>
			</div>
			<div class="row">
				<div class="centertext">
					<p>Ufuk Ozdogan's Homework for Bumin Yazilim, 2018</p>
				</div>
			</div>	
			
		</div>
		
		
			
		
	</body>
</html>