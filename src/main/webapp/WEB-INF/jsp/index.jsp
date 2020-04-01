<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <link rel = "stylesheet" href = "/css/mystyles.css">
 </head>
 <body>
 <h2>Todo Items</h2>
 <a href="${pageContext.request.contextPath}/todo/create"class = "lab">New</a>
 <table>
     <thead>
     <tr>
         <th scope="col"><label class = "lab">Title&nbsp;&nbsp;</label></th>
        <th scope="col"><label class = "lab">Completed&nbsp;&nbsp;</label></th>
         <th scope="col"><label class = "lab">Action&nbsp;&nbsp;</label></th>
         <th scope="col"><label class = "lab">Type</label></th>
     </tr>
     </thead>
     <body>
     <c:forEach var="todo" items="${todo}">
     <tr>
     <th scope="row">${todo.id}</th>
         <td> &nbsp; &nbsp;
             ${todo.title}
         </td>
         <td> &nbsp; &nbsp;
             ${todo.completed}
             </td>
                      <td> &nbsp; &nbsp;
                          ${todo.type.name}
            </td>
             <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
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
