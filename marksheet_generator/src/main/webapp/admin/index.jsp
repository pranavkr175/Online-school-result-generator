<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<style type="text/css">
body{
text-align: center;


}
h3{
text-align: center;
padding: 50px;
color:  fuchsia;
}

.work{
margin: auto;
border: 1px solid ;
width: 300px;
height: 175px;
padding: 25px;
border-radius: 15px;

}
.work ol li{
	color:purple;
}
</style>
</head>
<body>
<%@include file="adminnavbar.html" %>


	<c:if test="${empty adminobj }">
		<c:redirect url="../adminLogin.jsp"></c:redirect>
	</c:if>
	
	
	<h3 >WelCome to Admin Page</h3>
	<div class="work">
	<strong style="color: blue;">Admin can manage whole school </strong>
	<ol type="1">
	<li>
	Register Student
	</li>
	<li>
	Edit Student 
	</li>
	<li>
	Add Marks
	</li>
	<li>
	View Student Details
	</li>
	
	</ol>
	</div>
	
</body>
</html>