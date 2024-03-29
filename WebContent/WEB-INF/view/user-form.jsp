<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User Form</title>
<style>
.error {
	color: red
}
</style>
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
		<h2>User Form</h2>
		<form:form action="userRegistration" modelAttribute="user"
			method="post">
			<form:hidden path="userId" />
			<table>
				<tr>
					<td>Role Id:</td>
					<td><form:input path="roleId" /></td>
					<td><form:errors path="roleId" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Lock:</td>
					<td><form:input path="lock" /></td>
					<td><form:errors path="lock" cssClass="error" /></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /></td>
					<td><form:errors path="firstName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /></td>
					<td><form:errors path="lastName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><form:input path="login" /></td>
					<td><form:errors path="login" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><form:input path="confirmPassword" /></td>
					<td><form:errors path="confirmPassword" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Mobile:</td>
					<td><form:input path="mobile" /></td>
					<td><form:errors path="mobile" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:input path="gender" /></td>
					<td><form:errors path="gender" cssClass="error" /></td>
				</tr>
				<tr>
					<td>dob:</td>
					<td><form:input path="dob" type="date" /></td>
					<td><form:errors path="dob" cssClass="error" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>

