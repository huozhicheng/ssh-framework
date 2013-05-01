<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    </style>
</head>

<body>
	<!--Body content-->
	<div>
		<ul class="breadcrumb">
			<li><a href="#">首页</a> <span class="divider">/</span>
			</li>
			<li><a href="#">文章管理</a> <span class="divider">/</span>
			</li>
			<li class="active">所有文章</li>
		</ul>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th><input type="checkbox"></th>
					<th>编号</th>
					<th>标题</th>
					<th>分类</th>
					<th>日期</th>
					<th>作者</th>
					<th style="text-align: center;">操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td><a href="#">Java垃圾收集机制</a></td>
					<td>Java</td>
					<td>2013-04-18</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2</td>
					<td>C#开发入门</td>
					<td>C#</td>
					<td>2013-04-17</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>3</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>4</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>5</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>6</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>7</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>8</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>9</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>10</td>
					<td>Python 开发基础</td>
					<td>Python</td>
					<td>2013-04-16</td>
					<td>Horrion</td>
					<td style="text-align: center;">
						<div class="btn-group">
							<a href="#" title="查看" class="btn btn-small"><i
								class="icon-eye-open"></i> </a> <a href="#" title="编辑"
								class="btn btn-small"><i class="icon-edit"></i> </a> <a href="#"
								title="删除" class="btn btn-small"><i class="icon-trash"></i>
							</a>
						</div>
					</td>
				</tr>
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
