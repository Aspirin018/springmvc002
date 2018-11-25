<%--
  Created by IntelliJ IDEA.
  User: liyu
  Date: 2018/1/27
  Time: 下午10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript">
        var jsonUser = JSON.stringify({"username":"liyu","age":"18","address":"科技路"});
        function requestJson() {
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/user/requestJson.do',
                contentType: 'application/json;charset=utf-8',
                data: jsonUser,
                success: function (data) {
                    alert(data);
                }
            })
        }
        function requestPOJO() {
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/user/requestPOJO.do',
                contentType: 'application/json;charset=utf-8',
                data: 'username=liyu&age=18&address=科技路',
                success: function (data) {
                    alert(data);
                }
            })
        }
    </script>
</head>
<body>
    <input type="button" value="请求json,返回json" onclick="requestJson();">
    <input type="button" value="请求pojo,返回json" onclick="requestPOJO();">
</body>
</html>
