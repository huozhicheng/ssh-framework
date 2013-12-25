<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>H-Blog 管理中心</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="./public/css/bootstrap.min.css" rel="stylesheet">
    <script src="./public/js/jquery-1.8.2.min.js"></script>
    <script src="./public/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    	body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,微软雅黑,宋体,Arial,Tahoma,sans-serif,serif;
		}
		.header {
			height:61px;
			background: url(./admin/image/header01.png) repeat-x;
			border-bottom: 1px solid #444c57;
		}
		.header p {
			color: #fcfafb;
			font-size: 25px;
			font-weight: bold;
			padding-top: 20px;
			padding-left: 10px;
		}
		.nav li a {
			padding-left: 30px;
		}
		.nav-header {
			font-size: 14px;
		}
		.pagination{
			margin: 0px 0px;
		}
    </style>
  </head>
  
  <body>
  
	<div class="row-fluid">
		<div class="span12">
			<!-- 头部开始 -->
			<jsp:include page="/admin/top.jsp" />
			<!-- 头部结束 -->
			<!-- 内容开始 -->
			<div class="row-fluid">
				<div style="margin: 10px 10px 10px;">
					<!-- 左侧菜单开始 -->
					<jsp:include page="/admin/left.jsp"/>
					<!-- 左侧菜单结束 -->
					<!-- 右侧内容开始 -->
					<div class="span10" style="height: 100%;">
					<iframe id="iframe-main" name="main" width="100%" height="100%" border="0" frameborder="0" src="admin/articleList"></iframe>
					</div>
					<!-- 右侧内容结束 -->
				</div>
			</div>
			<!-- 内容结束 -->
		</div>
	</div>
  </body>
</html>
