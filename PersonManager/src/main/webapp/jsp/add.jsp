<%--
  Created by IntelliJ IDEA.
  User: 39740
  Date: 2020/10/1
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="/static/js/jquery-1.12.4.js"></script>
<form method="post" action="/add">
    <table border="1px">
        <tr align="center">
            <td colspan="2">人员添加</td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <select name="sex">
                    <option value="0">--请选择--</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>等级</td>
            <td>
                <select name="rank">
                    <option value="0">--请选择--</option>
                    <option value="1级">1级</option>
                    <option value="2级">2级</option>
                    <option value="3级">3级</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>部门</td>
            <td>
                <select name="department">
                    <option value="0">--请选择--</option>
                    <option value="开发部">开发部</option>
                    <option value="支持部">支持部</option>
                    <option value="工程质量部">工程质量部</option>
                </select>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
<script>
    $("form").submit(function () {
        var name = $("[name = 'name']").val();
        var age = $("[name = 'age']").val();
        var sex = $("[name = 'sex']").val();
        var department = $("[name = 'department']").val();
        var rank = $("[name = 'rank']").val();
        if(name == ""){
            alert("姓名不能为空");
            return false
        }
        if(age == ""){
            alert("年龄不能为空");
            return false
        }
        if(sex == 0){
            alert("性别不能为空");
            return false
        }
        if(rank == 0){
            alert("等级不能为空");
            return false
        }
        if(department == 0){
            alert("部门不能为空");
            return false
        }

    })
</script>
</body>
</html>
