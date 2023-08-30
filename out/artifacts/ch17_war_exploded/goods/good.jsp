<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.eshore.pojo.Goods"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>京西网！</title>
		<jsp:include page="../common/common.jsp"/>
		<script type="text/javascript" src="js/good/good.js"></script>
	</head>

	<body>
		<jsp:include page="../head.jsp"></jsp:include>
		<jsp:include page="../logo_select.jsp"></jsp:include>
		<div align="center">
			<br>
			<input id="status" type="hidden" name="status" value="${status}">
			<div>
				<font size="7">${good.gname}</font>
				<a href="#good-top"></a>
				<br>
				<table width="80%" height="80%" align="center">
					<tr>
						<td>
							<input id="gid" type="hidden" name="gid"
								value="${good.gid}">
							<img src="${good.gphoto}" width="300" height="300" border="0">
						</td>
						<td>
							<table class="table">
								<tr>
									<td>单价</td>
									<td>${good.price}元</td>
								</tr>

								<tr>
									<td>运费</td>
									<td>${good.price}元</td>
								</tr>
								<tr>
									<td>生产商</td>
									<td>${good.producer}</td>
								</tr>
								<tr>
									<td>产地</td>
									<td>${good.paddress}</td>
								</tr>
								<tr>
									<td>详细</td>
									<td>${good.described}</td>
								</tr>
								<tr>
									<td>选择</td>
									<td>
										<form action="" id="goodnum">
											<input type="text" name="number" size="4" value="1" maxlength=5
												   id="number">
											件
										</form>
									</td>
								</tr>
							</table>
							<div class="m-auto">
								<a class="btn btn-primary text-light" href="shoppingcart?gid=${good.gid}&number=1&action=good"
								   role="button">立即购买</a>
								<a class="btn btn-primary text-light" href="shoppingcart?gid=${good.gid}&number=1&action=intobus"
								   role="button">加入购物车</a>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div id="foot">
				<jsp:include page="../foot.jsp"></jsp:include>
			</div>
		</div>
	</body>
</html>
