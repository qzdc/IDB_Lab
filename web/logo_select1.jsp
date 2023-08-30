<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>

	<body>

			<tr>
				<td align="right" width="450">
				<div>
					<a id="img-link" href="index.jsp"> <img src="image/logo1.jpg" border="0"/> </a>
				</div>
				</td>
				<td align="center" width="700">
				<br>
					<div class="input-group w-10" >
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
				</td>
			</tr>
		</table>
		<hr>
	</body>
</html>
