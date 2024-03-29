<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>College List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<br>
	
	<div class="container">
		<div align="left">
			<table class="table table-bordered">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>State</th>
					<th>City</th>
					<th>Phone</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
				<c:forEach var="tempCollege" items="${college}">
					<c:url var="updateLink" value="/college/collegeFormForUpdate">
						<c:param name="college" value="${tempCollege.id}" />
					</c:url>
					<c:url var="deleteLink" value="/college/college-delete">
						<c:param name="college" value="${tempCollege.id}" />
					</c:url>
					<tr>
						<td>${tempCollege.id}</td>
						<td>${tempCollege.name}</td>
						<td>${tempCollege.address}</td>
						<td>${tempCollege.state}</td>
						<td>${tempCollege.city}</td>
						<td>${tempCollege.phone}</td>
						<td><a href="${updateLink}">Update</a></td>
						<td><a href="${deleteLink}">Delete</a></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>