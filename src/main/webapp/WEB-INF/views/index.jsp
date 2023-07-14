<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<p class="h1 text-center">Welcome to Product App</p>
		<table class="table">
			<thead>
				<tr class="table-dark">
					<th scope="col">S.No</th>
					<th scope="col">Product Name</th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products }" var="p">
					<tr>
						<th scope="row">${p.id }</th>
						<td>${p.name }</td>
						<td>${p.description}</td>
						<td>&#x20B9 ${p.price}</td>
						<td><a href="delete/${p.id }"><i
								class="fa-solid fa-trash"
								style="color: #ff0000; font-size: 25px;"></i></a>&nbsp; &nbsp;<a
							href="update/${p.id }"><i class="fa-solid fa-file-pen"
								style="color: #005eff; font-size: 25px;"></i></a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div class="text-center">
			<button type="button" class="btn btn-warning">Add New
				Product</button>
		</div>
	</div>
</body>
</html>