<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String contextPath = request.getContextPath();
 %>
<!DOCTYPE HTML>
<html>
<head>
	<title>My JSP 'article.jsp' starting page</title>
	<link href="<%=contextPath %>/public/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=contextPath %>/public/js/jquery-1.8.2.min.js"></script>
    <script src="<%=contextPath %>/public/js/bootstrap.min.js"></script>
    <style type="text/css">
    body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,微软雅黑,宋体,Arial,Tahoma,sans-serif,serif;
		}
	.background-css{
		padding: 8px 15px;
		margin: 0 0 20px;
		background-color: #f5f5f5;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px;
	}
    </style>
</head>

<body>
	<div>
		<ul class="breadcrumb">
			<li><a href="#">首页</a> <span class="divider">/</span>
			</li>
			<li><a href="#">用户管理</a> <span class="divider">/</span>
			</li>
			<li class="active">所有用户</li>
		</ul>
		<div class="background-css">
			<button class="btn btn-primary" type="button">添加用户</button>
		</div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th><input type="checkbox"></th>
					<th>编号</th>
					<th>用户编号</th>
					<th>用户名称</th>
					<th>用户性别</th>
					<th>用户年龄</th>
					<th style="text-align: center;">操作</th>
				</tr>
			</thead>
			<tbody>
			<s:iterator value="list" id="u">
				<tr>
					<td><input type="checkbox"></td>
					<td name="id"><s:property value="#u.id"/></td>
					<td name="id"><s:property value="#u.id"/></td>
					<td name="name"><s:property value="#u.name"/></td>
					<td name="sex"><s:property value="#u.sex"/></td>
					<td name="age"><s:property value="#u.age"/></td>
					<td>
						<a href="javascript:void(0)" onclick="deleteUser(this)">delete</a>|
						<a href="javascript:void(0)" onclick="updateUser(this)">update</a>
					</td>
				</tr>
			</s:iterator>
			</tbody>
		</table>
		<!-- 分页开始 -->
		<div class="pagination pagination-right">
			<ul>
				<li class="disabled"><a href="#">&laquo;</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
		<!-- 分页结束 -->
	</div>
</body>
</html>
