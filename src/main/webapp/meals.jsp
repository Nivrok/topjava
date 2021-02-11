<%--
  Created by IntelliJ IDEA.
  User: Nivrok
  Date: 08.02.2021
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Meals</title>
</head>
<body>
    <h1>MealList</h1>
    <table cellpadding="10">
        <tr bgcolor="#8fbc8f">
            <th>Date</th><th>Description</th><th>Calories</th><th>Update</th><th>Delete</th>
        </tr>
        <jsp:useBean id="mealList" scope="request" type="java.util.List"/>
        <c:forEach items="${mealList}" var="meal">
            <tr bgcolor="${meal.isExcess() ? '#f08080' : '#90ee90'}">
                <td>
                    <fmt:parseDate value="${meal.getDateTime()}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
                    <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${parsedDateTime}"/>
                </td>
                <td>${meal.getDescription()}</td>
                <td>${meal.getCalories()}</td>
                <td><a href="updateMeal?id=${meal.getId()}">Update</a></td>
                <td>Delete</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
