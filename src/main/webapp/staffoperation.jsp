<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%if((String)session.getAttribute("LOGGED_IN_STAFF")==null){
	response.sendRedirect("stafflogin.jsp");
}
String tempLoginStaff=(String)session.getAttribute("LOGGED_IN_STAFF");
session.setAttribute("TEMP_LOGIN_STAFF", tempLoginStaff);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="staffheader.jsp"></jsp:include>
	<main class="container-fluid">
<h2>Welcome !!!!!</h2>
<a href="staffchangepassword.jsp">change password</a>
<br/>
<a href="addstudentdetails.jsp">add student details</a>
<br/>
<a href="deletestudentdetails.jsp">delete student details</a>
<br/>
<a href="DisplayStudentDetailsServlet">display all student details</a>

</main>
</body>
</html>