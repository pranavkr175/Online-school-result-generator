<%@page import="entity.Marks"%>
<%@page import="DB.DbConnect"%>
<%@page import="dao.marksheetdao"%>
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
	<%
	int roll = Integer.parseInt(request.getParameter("roll"));
	//int roll = Integer.parseInt(request.getParameter("roll"));
	marksheetdao dao = new marksheetdao(DbConnect.getCon());
	Marks mr = dao.getDetailOfSubByRoll(roll);
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					<h3 style="text-align: center;">Add Marks</h3>
						<c:if test="${not empty succ }">
							<p class="text-center text-success">${succ}</p>
							<c:remove var="succMsg" />
						</c:if>

						<c:if test="${not empty error }">
							<p class=" text-center text-danger">${error}</p>
							<c:remove var="error" />
						</c:if>

						<form action="../marks" method="post">
							<div class=" mb-3">
								<input type="hidden" class="form-control" name="roll"
									value="<%=mr.getRoll()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">C Language</label> <input
									type="number" class="form-control" name="c"
									value="<%=mr.getC()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Web Tech</label> <input type="number"
									class="form-control" name="web" value="<%=mr.getWeb_tech()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Java</label> <input type="number"
									class="form-control" name="java" value="<%=mr.getJava()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Networking</label> <input
									type="number" class="form-control" name="network"
									value="<%=mr.getNetworking()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Python</label> <input type="number"
									class="form-control" name="python" value="<%=mr.getPython()%>">
							</div>


							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>