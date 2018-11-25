<%--
  Created by IntelliJ IDEA.
  User: liyu
  Date: 2018/1/27
  Time: 下午7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>姓名</td>
            <td>年龄</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.age}</td>
                <td><a href="${pageContext.request.contextPath}/rest/update/${user.id}">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
