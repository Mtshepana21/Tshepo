<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">


    <title>${modeTitle} Todo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <link rel = "stylesheet" href = "/css/mystyles.css">
</head>
<body>
<h2>${modeTitle} Todo</h2>
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
    <form:hidden path="id"/>
    <div class = "form-group">
                <form:label path="title" class = "lab">Title</form:label>
                <form:input path="title" ></form:input>
                <form:errors path="title"></form:errors>
            </div>
            <div class = "form-group">
                <form:label path="description" class = "lab">Description</form:label>
                <form:textarea path="description" cols="40" rows="25"></form:textarea>
                <form:errors path="description"></form:errors>
          </div>
          <div class = "form-group">
                <label class = "lab">Actions</label>
            </div>
            <div class = "form-group">
                <button type = "Cancel" class = "btn btn-primary">Cancel</button>
                &nbsp;
                <button type = "Submit" class = "btn btn-primary">Submit</button>
            </div>

</form:form>
</body>
</html>
