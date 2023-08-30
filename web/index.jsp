<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
    <title>京西网！</title>
    <jsp:include page="common/common.jsp"/>
    <script type="text/javascript" src="js/common/index.js"></script>
</head>

<body>
<div>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="logo_select.jsp"></jsp:include>
    <input id="status" type="hidden" name="status" value="${status}">
    <div id="main" >
        <div>
            <br>
            <table class="table w-50 m-auto" id="list" >
                <thead class="thead-light">
                <tr>
                    <th scope="col">分类</th>
                    <th scope="col" colspan="4">品牌</th>
                </tr>
                </thead>
                <tr class="goodlist">
                    <td>
                        <a href="goods?keyWord=cellphone&keyClass=2&action=index-select">手机</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=Huawei&keyClass=1&action=index-select">华为</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=iPhone&keyClass=1&action=index-select">苹果</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=oppo&keyClass=1&action=index-select">oppo</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=Xiaomi&keyClass=1&action=index-select">小米</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="goods?keyWord=notebook&keyClass=2&action=index-select">笔记本电脑</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=lenovo&keyClass=1&action=index-select">联想</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=ASUS&keyClass=1&action=index-select">华硕</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=dell&keyClass=1&action=index-select">戴尔</a>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <a href="goods?keyWord=tablet&keyClass=2&action=index-select">平板电脑</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=Samsung&keyClass=1&action=index-select">三星</a>
                    </td>
                    <td>
                        <a href="goods?keyWord=iPad&keyClass=1&action=index-select">苹果</a>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
