<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>京西网！</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
			  integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
			<a href="#" class="navbar-brand">京西购物中心</a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="index.jsp">首页 <span class="sr-only">(current)</span></a>
					</li>
					<%
						if (session.getAttribute("uname") == null
								|| session.getAttribute("uname").equals("")) {
					%>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
							个人中心
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="login.jsp">登录</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="register.jsp">注册</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled">请登录</a>
					</li>
					<%
						} else if(!session.getAttribute("uname").equals("admin")){
					%>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
							个人中心
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="shoppingcart?action=lookbus">购物车</a>
							<a class="dropdown-item" href="shoppingcart?action=paid">已购商品</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login?action=logout">注销</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled"><%=session.getAttribute("uname")%>，欢迎光临</a>
					</li>
					<%
						} else{
					%>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
							管理商品
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="addgoods.jsp">添加商品</a>
							<a class="dropdown-item" href="goods?action=displaygoods">删除商品</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login?action=logout">注销</a>
						</div>
					</li>
					<%	}
					%>
				</ul>
			</div>

		</nav>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
	</body>
</html>
