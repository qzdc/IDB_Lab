<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="com.eshore.pojo.Goods" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML >
<html>
<head>
	<title>京西网！</title>
	<jsp:include page="../common/common.jsp"/>
	<script type="text/javascript" src="js/shopcart/bus.js"></script>
	<script type="text/javascript" src="js/user/editpasswd.js"></script>
</head>

<body>
<div>
	<jsp:include page="../head.jsp"></jsp:include>
	<jsp:include page="../logo_select.jsp"></jsp:include>
	<input id="status" type="hidden" name="status" value="${status }">
	<div align="center">
		<div style="width: 80%; height: 78%;">
			<div id="left" align="left">
				<div style="padding-top: 2px;">
					<div id="title">
						个人信息
					</div>
					<ul id="myinf">
						<li>
							<a href="user?action=show">我的信息</a>
							<p>
						<li>
							<a href="user?action=edit">修改基本信息</a>
							<p>
						<li>
							<a href="user?action=editpasswd">修改密码</a>
					</ul>
					<p>
					<div id="title">
						我的购物车
					</div>
					<ul>
						<li>
							<a href="shoppingcart?action=lookbus">购物车</a>
							<p>
						<li>
							<a href="shoppingcart?action=paid">已购买的宝贝</a>
							<p>
					</ul>
				</div>
			</div>
			<div id="right" align="left">
				<div
						style="padding-right: 3%; padding-left: 5%; width: 90%; height: 100%;">
					<div align="center">


						<fieldset>
							<legend>
								修改密码
							</legend>
							<form id="editpasswd" action="user" method="post">
								<div align="left" style="padding-left: 20%">
									<p>
										<label>
											&nbsp;&nbsp;原密码：
										</label>
										<input class="required" type="password" name="oldPasswd" maxlength="50" minlength="3">
									<p>
										<label>
											&nbsp;&nbsp;新密码：
										</label>
										<input id="passwd1" class="required" type="password" name="passwd1" maxlength="50" minlength="3">
									<p>
										<label>
											确认密码：
										</label>
										<input id="passwd2" class="required" type="password" name="passwd2" maxlength="50" minlength="3">
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="hidden" name="action" value="editpasswd">
									<button type="submit" class="btn btn-primary ">修改</button>
								</div>
							</form>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="foot">
		<jsp:include page="../foot.jsp"/>
	</div>
	<script type="text/javascript" src="js/shopcart/bus.js"></script>
</body>
</html>
