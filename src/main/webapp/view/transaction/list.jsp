<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div class="panel panel-default">
	<div class="panel-heading">
		<strong>
			<span class="glyphicon glyphicon-info-sign"></span> Transaction List
		</strong>
		<div class="pull-right">
			<a href="javascript:void(0);" onClick="addForm('transaction')">
				<span class="glyphicon glyphicon-plus-sign"></span> New API Request
			</a>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-bordered table-condensed table-hover table-striped">
			<thead>
				<tr>
					<th>Test Information 1</th>
					<th>Test Information 2</th>
					<th>Test Information 3</th>
					<th>Test Check</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>TestValue1</td>
						<td>TestValue2</td>
						<td>ReallyLongStringThatProvesThisTableRocksHard</td>
						<td><span class="glyphicon glyphicon-ok"></span></td>
						<%-- ${user.userName} --%>
					</tr>
			</tbody>
		</table>
	</div>
</div>

