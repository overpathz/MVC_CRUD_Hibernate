<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new employee</title>
</head>
<body>
    <form:form action="addNewEmployee" method="post" modelAttribute="employee">
        Name <form:input path="name"/>
        <br>
        Surname <form:input path="surname"/>
        <br>
        Department <form:input path="department"/>
        <br>
        Salary <form:input path="salary"/>
        <br><br>
        <input type="submit" value="OK">
    </form:form>
 </body>
</html>
