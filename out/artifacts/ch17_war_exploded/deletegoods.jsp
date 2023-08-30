<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
    <title>京西网！</title>
    <jsp:include page="common/common.jsp"/>
    <script type="text/javascript" src="js/common/index.js"></script>
</head>

<body>
<jsp:include page="/head.jsp"></jsp:include>
<div align="center">
    <p>
        <input id="status" type="hidden" name="status" value="${status}">
    <div id="main">
    <div class="card m-auto" style="width:40rem">
        <form action="goods" method="post" id="delg">
            <table class="table w-70">
                <input type="hidden" name="action" value="displaygoods">
                <c:choose>
                    <c:when test="${empty goods}">
                        <div align="left">
                            <br/>
                            <span>别删了！！！</span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${goods}" var="tempgood" varStatus="status">
                            <input type="hidden" id="gid" name="gid">
                            <input type="hidden" id="gid${status.index}" name="gid${status.index}"
                                   value="${tempgood.gid}">
                            <input type="hidden" id="number" name="number">
                            <tr>
                                <th width="100px">
                                    <a id="img-link"
                                       href="goods?sid=${tempgood.gid}&action=goodslist-select"><img
                                            src="${tempgood.gphoto}" width="50px" height="50px" border="0">
                                    </a>
                                    <a href="goods?sid=${tempgood.gid}&action=goodslist-select">
                                            ${tempgood.gname}
                                </th>
                                <th width="150px" style="text-align: left">
                                    <a role="button" class="btn btn-outline-primary"
                                       href="goods?action=deletegoods&gid=${tempgood.gid}">删除</a>
                                </th>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </table>
        </form>
    </div>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
