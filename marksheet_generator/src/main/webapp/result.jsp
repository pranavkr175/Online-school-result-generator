<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

div{
text-align: center;

}
h2{
padding-top:50px;
color: rgba(224, 61, 212, 0.5); 

}h4{
color: rgba(24, 61, 212, 0.5);
bottom: 20px;
}
.form{
padding:30px;
height: 200px;
width: 300px;
margin: auto;
border-radius: 25% 0% 25% 0% ;
border: 1px solid navy;
}
.input {
	margin:30px;
	color:fuchsia;
	border-radius: 15% 5%;
	}
	button {
	
	margin: 35px;
}

}

</style>
</head>
<body>

<%@include file="navbar.html"%>
<div>
<h2>WELCOME TO SCHOOL OF TECHNOLOGY</h2>
<h4>DOWNLOAD YOUR MARKSHEET</h4>
<form action="marksheet.jsp" class="form"  >
<%if(session.getAttribute("error")!=null){%>
	<p style="color: red;"><%out.print(session.getAttribute("error"));}%></p>

<input class="input" type="text" name="roll" placeholder="enter your roll number"><br>
<button type="submit" >Search</button> 
</form>
</div>
</body>
</html>