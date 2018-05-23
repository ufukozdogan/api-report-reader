<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<strong>
			<span class="glyphicon glyphicon-plus-sign"></span> New User
		</strong>
	</div>
	<form:form method="post" class="form-horizontal" action="${path}/user/add" commandName="transactionForm">
		<form:hidden path="id"/>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-md-2 control-label">Full Name : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="name" placeholder="enter name"/>
				</div>
				<label class="col-md-2 control-label">User ID: </label>
				<div class="col-md-4">
					<form:input class="form-control" path="userId" placeholder="enter id"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">User Name : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="username : " placeholder="enter username"/>
				</div>
				<label class="col-md-2 control-label">Password : </label>
				<div class="col-md-4">
					<form:input class="form-control" path="password : " placeholder="enter password"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">Role : </label>
				<div class="col-md-4">
					<form:select class="form-control" path="role.id">
						<form:option value="test1">test1</form:option>
						<form:option value="test2">test2</form:option>
						<form:option value="test3">test3</form:option>
					</form:select>
				</div>
			</div>
		</div>
		<div class="panel-footer">
			<form:button value="save" class="btn btn-xs btn-default">
				<span class="glyphicon glyphicon-plus-sign"></span> Save
			</form:button>
		
		</div>
	</form:form>
</div>