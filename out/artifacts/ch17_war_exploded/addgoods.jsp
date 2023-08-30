<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        <div class="card-body">
            <form class="form" action="goods" method="post" name="addgoods">
                <table class="table w-70">
                    <tr>
                        <td>商品名称</td>
                        <td>
                            <input name="gname">
                        </td>
                    </tr>
                    <tr>
                        <td>商品图片</td>
                        <td>
                            <input name="gphoto">
                        </td>
                    </tr>
                    <tr>
                        <td>商品类别</td>
                        <td>
                            <input name="kinds">
                        </td>
                    </tr>
                    <tr>
                        <td>商品型号</td>
                        <td>
                            <input name="types">
                        </td>
                    </tr>
                    <tr>
                        <td>生产者</td>
                        <td>
                            <input name="producer">
                        </td>
                    </tr>
                    <tr>
                        <td>单价</td>
                        <td>
                            <input name="price">
                        </td>
                    </tr>

                    <tr>
                        <td>运费</td>
                        <td>
                            <input name="carriage">
                        </td>
                    </tr>

                    <tr>
                        <td>生产日期</td>
                        <td>
                            <input name="pdate">
                        </td>
                    </tr>

                    <tr>
                        <td>产地</td>
                        <td>
                            <input name="paddress">
                        </td>
                    </tr>

                    <tr>
                        <td>描述</td>
                        <td>
                            <input name="described">
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="action" value="addgoods">
                <button type="submit" class="btn btn-primary">提交</button>
            </form>
        </div>
    </div>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
