<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>添加文章</title>
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
			<li><a href="#">文章管理</a> <span class="divider">/</span></li>
			<li class="active">添加文章</li>
		</ul>
		<form class="form-horizontal well" action="<%=contextPath %>/admin/articleinsert" method="post">
			
			<div class="control-group">
				<label class="control-label" for="title">标题：</label>
				<div class="controls"> 	
					<input type="text" class="input-xxlarge" name="article.title" >
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="summary">摘要：</label>
				<div class="controls">
					<input type="text" class="input-xxlarge" name="article.summary" >
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="content">内容：</label>
				<div class="controls">
					<textarea rows="5" class="input-xxlarge" name="article.content"></textarea>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="author">作者：</label>
				<div class="controls">
					<input type="text" class="input-medium" name="article.author" >
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
