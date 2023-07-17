<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee-management-System</title>
</head>
<body>
<x:form action="addEmployee" modelAttribute="employee">
<x:input path="employeeName" placeholder="Enter Name: "/>
<x:input path="employeePhNo" placeholder="Enter Number: "/>
<input type="submit" value="save" >
</x:form>
</body>
</html>