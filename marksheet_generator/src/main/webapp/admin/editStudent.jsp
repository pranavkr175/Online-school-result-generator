<%@page import="DB.DbConnect"%>
<%@page import="dao.marksheetdao"%>
<%@page import="entity.StudentDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<%@ include file="adminnavbar.html"%>
	<%int roll=Integer.parseInt(request.getParameter("roll"));
	marksheetdao dao=new marksheetdao(DbConnect.getCon());
		StudentDetail sd=dao.getDetailOfStudentByRoll(roll);
	%>

	<form action="../update" method="post">
		<div class="container p-5">
			<div class="row">
				<h3 style="text-align: center;">Add student details</h3>
				<div class="col-md-4 offset-md-4">
					<div class="card paint-card">
						<div class="card-body">
							
								 <input type="hidden"
									class="form-control" name="roll" value="<%=sd.getRoll()%>">
							
							<div class="mb-3">
								<label class="form-label">name</label> <input type="text"
									class="form-control" name="name" value="<%=sd.getName()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">father name</label> <input type="text"
									class="form-control" name="fname" value="<%=sd.getFname()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">D.O.B</label> <input type="date"
									class="form-control" name="dob">
							</div>
							<div class="mb-3">
								<label class="form-label">address</label> <input type="text"
									class="form-control" name="add" value="<%=sd.getAdd()%>">
							</div>


							<button type="submit" class="btn btn-primary">Update</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>