<%@ taglib prefix="Form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lanus
  Date: 27/08/2020
  Time: 02:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #ctm{
            background-color: chocolate;
            padding: 5px;
            border-radius: 5px;
            max-width: 350px;
        }
        .error{
            color: red;
        }
    </style>
    <title>Login-Page</title>
</head>
<body>
<div id="ctm"><h1>Customer Login Page</h1></div><br>

    <Form:form action="${pageContext.request.contextPath}/loginAuthentication" method="POST">
        <c:if test="${param.error != null}">
            <i class="error"> Sorry! you enter wrong username/password</i><br><br>
        </c:if>
        User Name: <input type="text"  name="username">

        <br><br>
        Password:   <input type="password" name="password">
        <br><br>
        <input type="submit" value="Login">
    </Form:form>



</body>
</html>
