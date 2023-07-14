<%@page import="jakarta.servlet.jsp.PageContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<div
		class="container container d-flex align-items-center justify-content-center">
		<div class="card align-content-center justify-center"
			style="width: 50rem;">
			<div class="card-body">
				<div class="text-center">
					<h3 class="card-title">Change Your Product</h3>
				</div>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				<input value="${product.id }"  name=id class="visually-hidden">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Product
							Name</label> <input type="text" class="form-control"
							id="exampleFormControlInput1" placeholder="Enter Product Name"
							name="name" value="${product.name }">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput2" class="form-label">Product
							Price</label> <input type="text" class="form-control"
							id="exampleFormControlInput2" placeholder="Enter Product Price"
							name="price" value="${product.price }">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Product
							Description</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" name="description" >${product.description }</textarea>
					</div>
					<div class="text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-primary">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>