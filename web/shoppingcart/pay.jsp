<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.eshore.pojo.Goods"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title>京西网！！</title>
		<jsp:include page="../common/common.jsp"/>
		<script type="text/javascript" src="js/shopcart/pay.js"></script>
	</head>

	<body>

	<jsp:include page="../head.jsp"></jsp:include>
	<jsp:include page="../logo_select.jsp"></jsp:include>
		<div align="center">
			<div style="width: 80%; height: 100%;">
				<table width="100%" align="center" border="0">
					<tr>
						<td width="30%">
							<div align="center" style="border: 1px solid #c1eae8;">
								<div id="title" align="center">
									宝贝信息
								</div>
								<a id="img-link"
									href="goods?sid=${good.gid}&action=goodslist-select">
									<img src="${good.gphoto}" width="115" height="115" border="0">
								</a>
								<div style="padding-left: 5%" align="left">
									<p>
										宝贝名称：
										<a
											href="goods?sid=${good.gid}&action=goodslist-select">
											${good.gname}<br>${good.described}</a>
									<p>
										宝贝单价：
										<font id="price" color="blue">${good.price}</font>元
									<p>
										宝贝运费：
										<font id="carriage" color="blue">${good.carriage}</font>元
									
									<p>
										出产地：
										<font color="blue">${good.producer}</font>
									<p>
										出厂日期：
										<font color="blue">${good.pdate}</font>
								</div>
							</div>
						</td>
						<td width="70%">
							<form action="shoppingcart" method="post" id="pay" name="pay">
								<input type="hidden" name="gid" value="${good.gid}">
								<input type="hidden" name="action" value="pay">
								<div style="padding-left: 3%; padding-top: 3px; ">
									<div>
										<div id="title">
											确认收货地址
										</div>
										<br>
										<table class="table" style="padding-left: 10%">
											<tr>
												<th align="right">
													邮政编码：
												</th>
												<td>
													<input type="text" name="postcode" class="digits"
														maxlength="6" minlength="6">
												</td>
											</tr>
											<tr>
												<th align="right">
													地址：
												</th>
												<td>
													<input type="text" name="address" class="digits"
														maxlength="6" minlength="6">
												</td>
											</tr>
											<tr>
												<th align="right">
													收货人姓名：
												</th>
												<td>
													<input type="text" name="name" class="required"
														maxlength="20" minlength="2">
												</td>
											</tr>
											<tr>
												<th align="right">
													联系电话:
												</th>
												<td>
													<input type="text" name="phone" class="digits"
														maxlength="11" minlength="11">
												</td>
											</tr>
										</table>
										<p>
										<div id="title">
											确认提交订单
										</div>
										<p>
										<table style="padding-left: 10%">
											<tr>
												<th align="right">
													购买数量：
												</th>
												<td>
													<input id="number" type="text" name="number" class="digits"
														value="${number }" size="5">
												</td>
											</tr>
											<tr>
												<th align="right">
													实付费用：
												</th>
												<td>
													<div id="money"
														style="font-size: 25; font-family: Arial; color: red;">
				                                       ${number*(good.price+good.carriage)}
				                                    </div>元(含运费)
												</td>
											</tr>
											<tr>
												<td>
													<br>
												</td>
											</tr>
											<tr>
												<td colspan="2" align="center">
													<button type="submit" class="btn btn-primary ">确认购买</button>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</form>
						</td>
					</tr>
				</table>
			</div>
			<div id="foot">
				<jsp:include page="../foot.jsp"/> 
			</div>

		</div>
	</body>
</html>
