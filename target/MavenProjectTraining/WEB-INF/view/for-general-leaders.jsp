<%@ taglib prefix="Form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lanus
  Date: 01/09/2020
  Time: 05:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>general-leaders-page</title>
</head>
<body>
<h1>Announcement for only CEOs</h1>
<p>There will be a meeting in Iowa next week....</p><br>
<p><a href="${pageContext.request.contextPath}/home-page">Landing-Page</a></p>
<Form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <br>
    <input type="submit" value="Logout">
</Form:form><br>
</body>
</html>
