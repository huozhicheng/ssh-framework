<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>My JSP 'article.jsp' starting page</title>
	<link href="<%=contextPath%>/public/css/bootstrap.min.css" rel="stylesheet">
	<script src="<%=contextPath%>/public/js/jquery-1.8.2.min.js"></script>
	<script src="<%=contextPath%>/public/js/bootstrap.min.js"></script>
	<style type="text/css">
		body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue", Helvetica, STheiti, 微软雅黑, 宋体, Arial,
				Tahoma, sans-serif, serif;
		}
	</style>
</head>

<body>
	<div>
		<ul class="breadcrumb">
			<li><a href="#">首页</a> <span class="divider">/</span></li>
			<li><a href="#">用户管理</a> <span class="divider">/</span></li>
			<li class="active">添加用户</li>
		</ul>
		<form class="form-horizontal well" action="<%=contextPath %>/admin/handleinseart" method="post">
			<div class="control-group">
				<label class="control-label" for="userName">用户名：</label>
				<div class="controls">
					<input type="text" name="user.name" id="userName" placeholder="请输入您的用户名">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
				<div class="controls">
					<input type="password" name="user.password" id="password" placeholder="请输入你的密码">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">性&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
				<div class="controls">
					<label class="radio inline">
						<input type="radio" name="user.sex" id="optionsRadios1" value="man" checked>男
					</label>
					<label class="radio inline">
						<input type="radio" name="user.sex" id="optionsRadios2" value="woman">女
					</label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">年&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>
				<div class="controls">
						<input type="text" name="user.age" placeholder="请输入您的年龄">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-primary">保存</button>
					<button type="reset" class="btn">重置</button>
					<a class="btn btn-info" href="admin/userList">返回</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
