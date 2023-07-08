<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>
</head>
<body>
	<%@include file="adminnavbar.html"%>


	<c:if test="${empty adminobj }">
		<c:redirect url="../adminLogin.jsp"></c:redirect>
	</c:if>

	<form action="../reg" method="post">
		<div class="container p-5">
			<div class="row">
				
				<div class="col-md-4 offset-md-4">
					<div class="card paint-card">
						<div class="card-body">
						<h3 style="text-align: center;">Add student details</h3><br>
						
							<c:if test="${not empty succ }">
								<p class="text-center text-success">${succ}</p>
								<c:remove var="succ" />
							</c:if>

							<c:if test="${not empty error }">
								<p class=" text-center text-danger">${error}</p>
								<c:remove var="error" />
							</c:if>
							
							
							<div class=" mb-3">
								<label class="form-label">roll</label> <input type="text"
									class="form-control" name="roll">
							</div>
							<div class="mb-3">
								<label class="form-label">name</label> <input type="text"
									class="form-control" name="name">
							</div>
							<div class="mb-3">
								<label class="form-label">father name</label> <input type="text"
									class="form-control" name="fname">
							</div>
							<div class="mb-3">
								<label class="form-label">D.O.B</label> <input type="date"
									class="form-control" name="dob">
							</div>
							<div class="mb-3">
								<label class="form-label">address</label> <input type="text"
									class="form-control" name="add">
							</div>


							<button type="submit" class="btn btn-primary col-md-12">Register</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>