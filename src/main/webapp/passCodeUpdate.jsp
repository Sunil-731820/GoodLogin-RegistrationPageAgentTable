<%@page import="com.java.jsp.UsersDAO"%>
<%@page import="com.java.jsp.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome Sunil Okay right</h1>
<%
	UsersDAO dao = new UsersDAO();
	String userName = request.getParameter("userName");
	Users user = dao.searchByEmailUser(userName);
%>
<form method="get" action="passCodeUpdate.jsp">
	<center>
		UserName :
		<input type="text" name="userName" readonly="readonly" value=<%=userName%>><br><br>
		PassCode :
		<input type="text" name="passCode" value=<%=user.getPassCode()%>><br><br>
	
	<br>
	<input type="submit" value="UpdatePassCode ">
	</center>
</form>

<%
	if(request.getParameter("userName")!=null && request.getParameter("passCode")!=null ){
		Users userpassCodeUpdate = new Users();
		userpassCodeUpdate.setUserName(request.getParameter("userName"));
		userpassCodeUpdate.setPassCode(request.getParameter("passCode"));
		dao.updatePassWord(userpassCodeUpdate);
%>


<jsp:forward page="LoginPage.jsp"></jsp:forward>		
<% 
	}
%>

</body>
</html>