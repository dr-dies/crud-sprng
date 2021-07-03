<%--
  Created by IntelliJ IDEA.
  User: diesel
  Date: 03.07.2021
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>USERS</title>
</head>
<body>
<table>
    <caption>Users</caption>
    <tr>
        <th>№</th>
        <th>name</th>
        <th>lastName</th>
        <th>email</th>
        <th colspan="2">action</th>
    </tr>
    <c:forEach var="user" items="${usersList}" varStatus="i">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td><a href="<c:url value="/edit/${user.id}"/>">edit</a></td>
            <td><a href="<c:url value="/delete/${user.id}"/>">delete</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="7">
            <a href="<c:url value="/add"/>">Add new user</a>
            <c:forEach begin="${1}" end="${pagesCount}" step="1" varStatus="i">
                <c:url value="/" var="url">
                    <c:param name="page" value="${i.index}"/>
                </c:url>
                <a href="${url}">${i.index}</a>
            </c:forEach>
        </td>
    </tr>
</table>
</body>
</html>