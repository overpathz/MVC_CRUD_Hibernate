<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<body>

        <div>
            <table>
                <tr align="center">
                    <th width="100">Name</th>
                    <th width="100">Surname</th>
                    <th width="100">Department</th>
                    <th width="100">Salary</th>
                    <th width="200">Operations</th>
                </tr>

                <c:forEach var="employee" items="${employees}">

                    <c:url var="updateButton" value="/employees/updateEmployee">
                        <c:param name="empId" value="${employee.id}"/>
                    </c:url>

                    <c:url var="deleteButton" value="/employees/deleteEmployee">
                        <c:param name="empId" value="${employee.id}"/>
                    </c:url>

                    <tr align="center">
                        <td width="100">${employee.name}</td>
                        <td width="100">${employee.surname}</td>
                        <td width="100">${employee.department}</td>
                        <td width="100">${employee.salary}</td>
                        <td width="100">
                            <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                            <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <br>

            <input type="button" value="add" onclick="window.location.href = 'employees/addNewEmployee'">

        </div>

</body>
</html>
