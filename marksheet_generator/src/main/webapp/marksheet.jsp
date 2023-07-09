<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="entity.Marks"%>
<%@page import="DB.DbConnect"%>
<%@page import="dao.marksheetdao"%>
<%@page import="entity.StudentDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="allcss.css">
</head>


<%

int total_number=0;
String div=null;
String result=null;
int roll = Integer.parseInt(request.getParameter("roll"));
marksheetdao dao = new marksheetdao(DbConnect.getCon());
StudentDetail sd = dao.getDetailOfStudentByRoll(roll);
Marks mr = dao.getDetailOfSubByRoll(roll);
if(mr!=null&&sd!=null){
total_number = mr.getC() + mr.getJava() + mr.getNetworking() + mr.getPython() + mr.getWeb_tech();
result = null;
div = "Try again";
if (mr.getC() >= 33 && mr.getJava() >= 33 && mr.getNetworking() >= 33 && mr.getPython() >= 33
		&& mr.getWeb_tech() >= 33) {
	result = "pass";
	if (total_number / 5 >= 60) {
		div = "1st Div";
	} else if (total_number / 5 >= 45) {
		div = "2nd Div";
	} else if (total_number / 5 >= 33) {
		div = "3rd Div";
	} else {
		div = "Fail try again";
	}

} else {
	result = "fail";
}
}else{
	session.setAttribute("error","Invalid roll number");
	response.sendRedirect("result.jsp");
}
%>

<body>
	<button onclick="window.print()">Print</button>
	<div class="root">
		<div class="mainHead">
			<div class="head">
				<img src="images/logo.png" alt=" logo">
				<p>SCHOOL OF TECHNOLOGY,BHAGALPUR BIHAR</p>
				<br>
			</div>
			<p class="sub">
				<u>( UNIVERSITY OF TECHNOLOGY OF BIHAR )</u>
			</p>
			<div class="desc">
				<p>Marksheet Statement</p>
			</div>
		</div>
		<div class="ExamName">
			<p>EXAMINATION DECEMBER-2023</p>
		</div>
		<div class="course">
			<P>MASTER OF COMPUTER APPLICATION</P>
		</div>
<%if(mr!=null&&sd!=null){ %>
		<div class="detail">
			<div class="left">
				<ul type="none">
					<li><span>Name :</span> <%=sd.getName()%></li>
					<li><span>Father name :</span> <%=sd.getFname()%></li>
					<li><span>Address :</span> <%=sd.getAdd()%></li>
					<li><span>Institution name :</span>Technocrats institute of
						technology, bhopal</li>
				</ul>
			</div>
			<div class="right">
				<ul type="none">
					<li><span>D.O.B :</span> <%=sd.getDob()%></li>
					<li><span>Roll :</span> <%=sd.getRoll()%></li>
					<li><span>Semester :</span> 3<sup>rd</sup></li>
					<li><span>status :</span> Regular</li>

				</ul>
			</div>
		</div>

		<table class="marks">
			<tr>
				<th>SUBJECT CODE</th>
				<th class="subjectName">SUBJECT NAME</th>
				<th>TOTAL MARKS</th>
				<th>PASS MARKS</th>
				<th>OBTAINED MARKS</th>
			</tr>
			<tr>
				<td>MCA301</td>
				<td class="subjectName">C LANGUAGE</td>
				<td>100</td>
				<td>33</td>
				<td><%=mr.getC()%></td>
			</tr>
			<tr>
				<td>MCA302</td>
				<td class="subjectName">WEB TECH</td>
				<td>100</td>
				<td>33</td>
				<td><%=mr.getWeb_tech()%></td>
			</tr>
			<tr>
				<td>MCA303</td>
				<td class="subjectName">JAVA PROGRAMMING</td>
				<td>100</td>
				<td>33</td>
				<td><%=mr.getJava()%></td>
			</tr>
			<tr>
				<td>MCA304</td>
				<td class="subjectName">COMPUTER NETWORK</td>
				<td>100</td>
				<td>33</td>
				<td><%=mr.getNetworking()%></td>
			</tr>
			<tr>
				<td>MCA305</td>
				<td class="subjectName">PYTHON</td>
				<td>100</td>
				<td>33</td>
				<td><%=mr.getPython()%></td>
			</tr>
			<tr>
				<td colspan="2" >TOTAL</td>
				
				<td>500</td>
				<td>165</td>
				<td><%=total_number%></td>
			</tr>
			<tr>
				<table id="result">
					<td><ul type="none" class="result">
							<li><span>Division :</span> <%=div%></li>
							<li><span>Result :</span> <%=result%></li>
							<li><span>Percentage :</span> <%=total_number/5%>%</li>
						</ul></td>
				</table>
			</tr>


		</table>
<%}else{
	session.setAttribute("error","Invalid roll number");
	 RequestDispatcher rd=request.getRequestDispatcher("result.jsp");  
     rd.include(request, response);
	
} %>

		<div class="seal">
			<div class="institute">
				<img src="images/SEAL.png" alt="">
				<p>
					<span>Signature & seal of institute</span>
				</p>
			</div>
			<div class="controller">
				<img src="images/Signa.png" alt="">
				<p>
					<span>Signature & seal of Exam Controller</span>
				</p>
			</div>
		</div>
		<footer class="footer">
			<div>
				<p>
					Date of print : <span id="date"></span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Date
					of publish : <span id="date">20/05/2023</span>
				</p>
			</div>
			<p class="note">
				<span>Note :-</span> This is system generated valid document printed
				through Dummy project, verified by project team. If any issue
				occured then contact to pranav kumar
			</p>
		</footer>

	</div>


	<script>
		const date = new Date();

		let day = date.getDate();
		let month = date.getMonth() + 1;
		let year = date.getFullYear();

		let currentDate = `${day}-${month}-${year}`;
		var date1 = document.getElementById("date");
		date1.innerHTML = currentDate;
	</script>
</body>
</html>
