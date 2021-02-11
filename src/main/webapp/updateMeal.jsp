<%--
  Created by IntelliJ IDEA.
  User: Nivrok
  Date: 09.02.2021
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <jsp:useBean id="meal" scope="request" type="ru.javawebinar.topjava.model.Meal"/> --%>
<html>
<head>
    <title>Update Meal</title>
</head>
<body>
    <form name="test" method="post" action="updateMeal.jsp">
        <p><b>Дата и время:</b><br>
            <input type="datetime-local" size="60" name="date" value="${meal.getDateTime()}">
        </p>
        <p><b>Описание:</b><br>
            <input type="text" size="60" name="description" value="${meal.getDescription()}">
        </p>
        <p>Калории:<Br>
            <input type="text" size="40" name="description" value="${meal.getCalories()}">
        <p><input type="submit" value="Отправить">
            <input type="button" value="Отменить"></p>
    </form>


</body>
</html>
