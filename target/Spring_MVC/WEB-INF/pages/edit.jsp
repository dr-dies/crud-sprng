<%--
  Created by IntelliJ IDEA.
  User: diesel
  Date: 03.07.2021
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:choose>
        <c:when test="${empty user.id}">
            <title>Add</title>
        </c:when>
        <c:otherwise>
            <title>Edit</title>
        </c:otherwise>
    </c:choose>
</head>
<body>
<c:url value="/add" var="addUrl"/>
<c:url value="/edit" var="editUrl"/>
<form action="${empty user.id ? addUrl : editUrl}" name="user" method="POST">
    <c:choose>
        <c:when test="${!empty user.id}">
            <p>Edit user</p>
            <input type="hidden" name="id" value="${user.id}">
        </c:when>
        <c:otherwise>
            <p>Add new user</p>
        </c:otherwise>
    </c:choose>
    <p><input type="text" name="name" placeholder="name" value="${user.name}" maxlength="100" required>
    <p><input type="text" name="lastName" placeholder="lastName" value="${user.lastName}" maxlength="100" required>
    <p><input type="text" name="email" placeholder="email" value="${user.email}" maxlength="100" required>
    <p>
        <c:set value="add" var="add"/>
        <c:set value="edit" var="edit"/>
        <input type="submit" value="${empty user.id ? add : edit}">
    </p>
    <p>${message}</p>
</form>
</body>
</html>
