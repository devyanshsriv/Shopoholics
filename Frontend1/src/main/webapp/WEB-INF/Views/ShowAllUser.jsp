<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a href="http://localhost:8080/Frontend1/"> <--- HOME</a></li>
		</ul>
	</div>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">User Id</th>
				<th scope="col">Email Id</th>
				<th scope="col">Address</th>
				<th scope="col">Mobile</th>
				<th scope="col">Name</th>
				<th scope="col">Action</th>
			</tr>
		</thead>

		<c:forEach items="${listUSer}" var="user">
			<tr>
				<td>${user.userid}</td>
				<td>${user.email}</td>
				<td>${user.address}</td>
				<td>${user.mobile}</td>
				<td>${user.name}</td>

				<!-- Edit & Delete Button -->
				<td><a
					href="${pageContext.request.contextPath}/user/edituser/${user.userid}"
					class="fas fa-pencil-alt btn btn-info"></a> <a
					href="${pageContext.request.contextPath}/user/deleteUser/${user.userid}"
					class="fas fa-trash-alt btn btn-danger"></a></td>

			</tr>

		</c:forEach>
	</table>
</body>
</html>