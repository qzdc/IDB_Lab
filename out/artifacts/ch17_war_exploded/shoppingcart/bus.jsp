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
                        <form class="form" action="shoppingcart" method="post" id="bus">
                            <c:choose>
                            <c:when test="${empty goods}">
                                <div align="left">
                                    <br/>
                                    <h1 align="center">您的购物车还是空的，看看其他商品吧</h1>
                                    <p>
                                            <jsp:include page="../recommend.jsp"/>
                                </div>
                            </c:when>
                            <c:otherwise>
                            <table class="table">
                                <input type="hidden" name="action" value="editbus">
                                <tr style="text-align: center">
                                    <th>图片</th>
                                    <th>详细</th>
                                    <th>单价（元）</th>
                                    <th>数量</th>
                                    <th>总计（元）</th>
                                    <th colspan="2" width="150px">操作</th>
                                </tr>
                                <c:forEach items="${goods}" var="tempgood" varStatus="status">
                                    <input type="hidden" id="gid" name="gid">
                                    <input type="hidden" id="gid${status.index}" name="gid${status.index}"
                                           value="${tempgood.good.gid}">
                                    <input type="hidden" id="number" name="number">
                                    <tr>
                                        <th width="100px">
                                            <a id="img-link"
                                               href="goods?sid=${tempgood.good.gid}&action=goodslist-select"><img
                                                    src="${tempgood.good.gphoto}" width="50px" height="50px"
                                                    border="0">
                                            </a>
                                        </th>
                                        <th width="200px" align="left">
                                            <a href="goods?sid=${tempgood.good.gid}&action=goodslist-select">
                                                    ${tempgood.good.gname}
                                            </a>
                                            <br>
                                                ${tempgood.good.described}
                                            <br>
                                            型号： ${tempgood.good.types}
                                        </th>
                                        <th width="100px">
                                                ${tempgood.good.price}
                                        </th>
                                        <th width="150px">
                                            <input id="number${status.index}" name="${status.index}" class="form-control"
                                                   value="${tempgood.number}" size="3" maxlength="5">
                                            <br>
                                            <button id="minus${status.index}" name="minus" class=" btn btn-outline-primary" ${status.index}>-</button>
                                            <button id="add${status.index}" name="add" class="btn btn-outline-primary ${status.index} ">+</button>
                                        </th>
                                        <th width="100px">
                                            <font color="red"
                                                  style="font-family: Arial">${tempgood.good.price*tempgood.number}</font>
                                        </th>
                                        <th width="150px" style="text-align: left">
                                            <a role="button" class="btn btn-outline-primary"
                                               href="shoppingcart?gid=${tempgood.good.gid}&number=${tempgood.number}&action=good">立即购买</a>
                                            <a  role="button" class="btn btn-outline-primary"
                                                href="shoppingcart?action=deletebus&gid=${tempgood.good.gid}">删除</a>
                                        </th>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td colspan="6" align="right">
                                        商品总价：
                                        <span>${countPrice}</span> 元
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" align="right">
                                        <div>
                                            <a role="button" class="btn btn-outline-primary"
                                                href="shoppingcart?action=deleteall">删除全部</a>
                                            <a role="button" class="btn btn-outline-primary"
                                               href="shoppingcart?action=payall">购买全部</a>
                                        </div>
                                    </td>
                            </table>
                            </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
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
