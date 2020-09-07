<%@ taglib prefix="Form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lanus
  Date: 01/09/2020
  Time: 06:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The-Admins</title>
</head>
<body>
<h3>This is for the Admins</h3>
<p>The password to render the portal is "34563".</p><br>

<p><a href="${pageContext.request.contextPath}/home-page">Landing-Page</a></p>
<Form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <br>
    <input type="submit" value="Logout">
</Form:form><br>
</body>
</html>
