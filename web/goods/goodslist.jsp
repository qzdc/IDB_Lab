<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML >
<html>
<head>
    <title>京西网！</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>

<body>
<jsp:include page="../head.jsp"></jsp:include>
<jsp:include page="../logo_select.jsp"></jsp:include>
<div align="center">
    <div id="main">
        <c:choose>
            <c:when test="${empty goods}">
                <div align="left">
                    <span>抱歉，没有找到符合您条件的商品，请看看别的</span>
                    <br>
                    <jsp:include page="../recommend.jsp"/>
                </div>
            </c:when>
            <c:otherwise>
                <table class="table w-70">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">图片</th>
                        <th scope="col">产品</th>
                        <th scope="col">单价</th>
                        <th scope="col">运费</th>
                        <th scope="col">型号</th>
                        <th scope="col">产地</th>
                    </tr>
                    </thead>
                    <c:forEach items="${goods}" var="good">
                        <tr height=>
                            <td>
                                <a href="goods?sid=${good.gid}&action=goodslist-select">
                                    <img src="${good.gphoto}" width="100px" height="100px" border="0">
                                </a>
                            </td>
                            <td>
                                <a href="goods?sid=${good.gid}&action=goodslist-select">
                                        ${good.gname}</a>
                                <br>
                                    ${good.described}
                                <br>
                                出厂日期：${good.pdate}
                            </td>
                            <td>${good.price}￥
                            </td>
                            <td>${good.carriage}￥
                            </td>
                            <td>${good.types}</td>
                            <td>${good.paddress}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
        <%--					</table>--%>
    </div>
    <div id="foot">
        <jsp:include page="../foot.jsp"/>
    </div>
</div>
</body>
</html>
