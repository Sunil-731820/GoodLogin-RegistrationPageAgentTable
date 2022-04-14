<%@page import="com.java.jsp.Users"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="com.java.jsp.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

<%
	UsersDAO dao = new UsersDAO();
	
%>

<form method="get" action="RegisterPage.jsp">
	<center>
	<h1 class="heading">Create Account?Sign Up</h1>
	Enter userName :
	<input class="user" type="text" name="userName"><br><br>
	Enter passcode :
	<input class="passcode" type="text" name="passCode"><br><br>
	<input class="reg" type="submit" value="Register">	
	</center>
	
</form>

<%
	if(request.getParameter("userName")!=null &&
	request.getParameter("passCode")!=null){
		Users users = new Users();
		users.setUserName(request.getParameter("userName"));
		users.setPassCode(request.getParameter("passCode"));
		dao.registerAgent(users);
		%>
		
		<jsp:forward page="LoginPage.jsp"></jsp:forward>
		<%	
	}
%>

</body>
</html>