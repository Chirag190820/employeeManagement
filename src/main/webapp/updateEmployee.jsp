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
<x:form action="saveUpdatedEmployee" modelAttribute="employee" >
<x:input path="employeeId" readonly="true" value="${employee.getemployeeId()}"/>
<x:input path="employeeName"/>
<x:input path="employeePhNo"/>
<input type="submit" value="update">
</x:form>
</body>
</html>