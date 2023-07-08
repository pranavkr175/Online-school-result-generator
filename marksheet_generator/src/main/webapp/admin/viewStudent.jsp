<%@page import="entity.StudentDetail"%>
<%@page import="java.util.List"%>
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
	<h3 style="text-align: center;">View student details</h3>

	<c:if test="${not empty succ }">
		<p class="text-center text-success">${succ}</p>
		<c:remove var="succ" />
	</c:if>

	<c:if test="${not empty error }">
		<p class=" text-center text-danger">${error}</p>
		<c:remove var="error" />
	</c:if>
	<table class="table" style="margin: auto;">
		<thead>
			<tr class="card-body" padding:5px>
				<th scope="col">Full Name</th>
				<th scope="col">Father name</th>
				<th scope="col">DOB</th>
				<th scope="col">Address</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			marksheetdao dao = new marksheetdao(DbConnect.getCon());
			List<StudentDetail> ls = dao.getAllDetail();
			for (StudentDetail sd : ls) {
			%>

			<tr class="paint-card " style="padding:5px; margin: auto;">
				<th scope="row"><%=sd.getName()%></th>
				<td><%=sd.getFname()%></td>
				<td><%=sd.getDob()%></td>
				<td><%=sd.getAdd()%></td>
				<td><a href="editStudent.jsp?roll=<%=sd.getRoll()%>"
					class="btn btn-sm btn-primary">Edit</a> <a
					href="addMarks.jsp?roll=<%=sd.getRoll()%>"
					class="btn btn-sm btn-danger ms-1">Add marks</a></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>