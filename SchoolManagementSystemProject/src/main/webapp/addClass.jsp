<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4" >
				<form action="/teacher/sec" style="margin-top: 20%; padding:10px; font-family:serif;">
				<h4 style="text-align: left;">Student class</h4>
					<div class="mb-3">
					 <input type="text"
							class="form-control" name="classno" placeholder="Class NO.">
					</div>
					
					
						<select class="form-select" aria-label="Default select example">
							<option selected>Teacher</option>
							<c:forEach var="t" items="${tl}">
							<option value="">${t.name }</option>
							</c:forEach>
							</select><br>
					                                           

						<select class="form-select" aria-label="Default select example">
							<option selected>Section</option>
							  <c:forEach var="sc" items="${section}">
							<option value="">${sc.name}</option>
							</c:forEach>
							 </select><br>
					<button type="submit" class="btn btn-primary">Add Class</button>
				</form>
                     


					
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>