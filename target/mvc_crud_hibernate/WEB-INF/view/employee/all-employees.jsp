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
                </tr>

                <c:forEach var="employee" items="${employees}">
                    <tr align="center">
                        <td width="100">${employee.name}</td>
                        <td width="100">${employee.surname}</td>
                        <td width="100">${employee.department}</td>
                        <td width="100">${employee.salary}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>


</body>
</html>
