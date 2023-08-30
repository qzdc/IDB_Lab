<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title></title>
	</head>

	<body>
		<div align="center">
			<a id="img-link" href="index.jsp"> <img src="image/logo1.jpg"/> </a>
		</div>
		<br>
		<div align="center">
<%--			style=" width: 1000px; height: 75px;">--%>
			<br>
			<form action="goods" method="post" name="index-select">
				<div class="input-group mb-3 w-50">
					<input type="text" class="form-control" placeholder="请输入关键字"
						   aria-label="Recipient's username" aria-describedby="button-addon2"
							id="keyWord" name="keyWord">
					<select name="keyClass" class="custom-select">
						<option value="0" selected="selected">选择查询类别</option>
						<option value="1">按商品名</option>
						<option value="2">按商品种类</option>
					</select>
					<div class="input-group-append">
						<input type="hidden" name="action" value="index-select">
						<input class="btn btn-outline-secondary" type="submit" value="搜 索">
					</div>
				</div>

<%--				<select class="custom-select" id="inputGroupSelect02">--%>
<%--					<option selected>Choose...</option>--%>
<%--					<option value="1">One</option>--%>
<%--					<option value="2">Two</option>--%>
<%--					<option value="3">Three</option>--%>
<%--				</select>--%>

			</form>
			<br>
		</div>
	</body>
</html>
