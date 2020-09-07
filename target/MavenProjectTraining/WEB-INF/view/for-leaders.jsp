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
    <title>leaders-page</title>
</head>
<body>
<h2>Only who is a Manager can see this</h2>
<p>Salary will increase by Oct. 2020.....</p><br>
<p><a href="${pageContext.request.contextPath}/home-page">Landing-Page</a></p>
<Form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <br>
    <input type="submit" value="Logout">
</Form:form><br>
</body>
</html>
