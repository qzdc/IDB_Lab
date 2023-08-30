<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
<head>
    <title>淘淘网—开心淘！</title>
    <jsp:include page="common/common.jsp"/>
    <script type="text/javascript" src="js/common/index.js"></script>
</head>

<body>
<div align="center">
    <div id="top">
        <jsp:include page="head.jsp"></jsp:include>
    </div>
    <p>
    <input id="status" type="hidden" name="status" value="${status}">
    <div align="center" id="main">
        <a href="addgoods.jsp">[添加商品]</a><br>
        <a href="goods?action=displaygoods">[删除商品]</a>
    <p>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
