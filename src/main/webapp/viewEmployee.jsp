<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-management-System</title>
</head>
<body>
<h1>View Employee</h1>

<table border="2px" >
<tr>
<th>EmpID</th>
<th>EmpNAME</th>
<th>EmpPhNo</th>
<th>UPDATE</th>
<th>DELETE</th>
</tr>
<x:forEach var="employee" items="${employees}">
<tr>
<td>${employee.getEmployeeId()}</td>
<td>${employee.getEmployeeName()}</td>
<td>${ employee.getEmployeePhNo()}</td>
<td><a href="updateEmployee?id=${employee.getEmployeeId()}">Update</a></td>
<td><a href="deleteEmployee?id=${employee.getEmployeeId()}">Delete</a></td>
</tr>
</x:forEach>
</table>
</body>
</html>