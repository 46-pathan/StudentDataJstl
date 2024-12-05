<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sql" uri="jakarta.tags.sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Data</title>
</head>
<body>
	<h2>Student Data</h2>
	<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/newmydb" user="root" password="123456"/>
	
	<sql:query dataSource="${dbSource}" var="result">
	select * from students;
	</sql:query>
	
	<table border="1">
	<tr>
	<th>ID</th>
	<th>Firstname</th>
	<th>Lastname</th>
	<th>Email</th>
	<th>Mobile</th>
	<th>Gender</th>
	<th>Password</th>
	</tr>
	<c:forEach var="row" items="${result.rows }">
		<tr>
			<td>${row.id }</td>
			<td>${row.fname}</td>
			<td>${row.lname }</td>
			<td>${row.email }</td>
			<td>${row.mobile }</td>
			<td>${row.gender }</td>
			<td>${row.password }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>