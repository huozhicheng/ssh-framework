<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="span2">
	<!--Sidebar content-->
	<ul class="nav nav-list well" id="sidebar-ul">
		<li class="nav-header"><i class="icon-book"></i> 文章管理</li>
		<li class="active" onclick="addCl(this)">
			<a href="admin/article.jsp" target="main"><i class="icon-list-alt"></i>所有文章</a>
		</li>
		<li onclick="addCl(this)">
			<a href="admin/user.jsp" target="main"><i class="icon-pencil"></i> 写文章</a>
		</li>
		<li onclick="addCl(this)">
			<a href="javascript:void(0)"><i class="icon-list"></i> 分类目录</a>
		</li>
		<li onclick="addCl(this)">
			<a href="javascript:void(0)"><i class="icon-tags"></i> 标签</a>
		</li>
		
		<li class="divider"></li>
		<li class="nav-header"><i class="icon-user"></i> 用户管理</li>
		<li onclick="addCl(this)">
			<a href="admin/userList" target="main"><i class="icon-cog"></i> 用户列表</a>
		</li>
		
		<li class="divider"></li>
		<li class="nav-header"><i class="icon-user"></i> 个人设置</li>
		<li onclick="addCl(this)">
			<a href="javascript:void(0)"><i class="icon-cog"></i> 个人资料</a>
		</li>
		<li onclick="addCl(this)">
			<a href="javascript:void(0)"><i class="icon-lock"></i> 密码修改</a>
		</li>
		
		<li class="divider"></li>
		<li class="nav-header"><i class="icon-wrench"></i> 系统设置</li>
		<li onclick="addCl(this)">
			<a href="javascript:void(0)"><i class="icon-cog"></i> 基本设置</a>
		</li>
	</ul>
	<div class="well" style="margin-top: 20px">
		<p>
			<a href="http://weibo.com/22817237" target="_blank"><span
				class="badge badge-info">Weibo</span> </a> <a
				href="https://github.com/huozhicheng/H-Blog" target="_blank"><span
				class="badge badge-info">Github</span> </a>
		</p>
		<p>
			Powered by <span class="label label-success">H-Blog</span>
		</p>
	</div>
	<script type="text/javascript">
		function addCl(liObject) {
			$("li.active").removeClass("active");
			$(liObject).attr("class", "active");
		}
	</script>
</div>
