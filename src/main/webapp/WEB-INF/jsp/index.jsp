<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
 <link rel = "stylesheet" href = "/css/mystyles.css">
</head>
<body>
<h2>Todo Items</h2>
<a href="${pageContext.request.contextPath}/todo/create">New</a>
<table>
    <head>
    <tr>
        <td><label>Title</label></td>
        <td><label>Completed</label></td>
        <td><label>Action</label></td>
    </tr>
    </head>
    <body>
    <c:forEach var="todo" items="${todo
    }">
    <tr>
        <td>
            ${todo.title}
        </td>
        <td>
            ${todo.completed}
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
