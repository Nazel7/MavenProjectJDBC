<%--
  Created by IntelliJ IDEA.
  User: lanus
  Date: 01/09/2020
  Time: 05:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>employees-page</title>
</head>
<body>

<h2>This is for all employees for this company</h2>
<hr>
<a href="${pageContext.request.contextPath}/Admins">Admin-Page</a>
<a href="${pageContext.request.contextPath}/Leaders">Managers-Page</a>
<a href="${pageContext.request.contextPath}/GeneralLeader">CEO-Page</a>

<hr>

</body>
</html>
