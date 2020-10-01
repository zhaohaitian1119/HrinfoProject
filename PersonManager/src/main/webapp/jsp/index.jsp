<%--
  Created by IntelliJ IDEA.
  User: 39740
  Date: 2020/10/1
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="#" method="post">
    <table border="1px">
        <tr align="center">
            <td colspan="7">人员列表</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>等级</td>
            <td>部门</td>
            <td>操作</td>
        </tr>
        <c:forEach var="item" items="${person}">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.sex}</td>
            <td>${item.age}</td>
            <td>${item.rank}</td>
            <td>${item.department}</td>
            <td>
                <a href="#" onclick="del(${item.id})">删除</a>
            </td>
        </tr>
        </c:forEach>
    </table>
    <input align="center" type="button" value="添加人员" onclick="tz()">
</form>
<script>
    function tz() {
        location.href="/jsp/add.jsp";
    }
    function del(id) {
        alert(id);
        var flag = confirm("确定要删除么");
        if(flag == true){
            location.href = "/del/"+id;
        }
    }
</script>
</body>
</html>
