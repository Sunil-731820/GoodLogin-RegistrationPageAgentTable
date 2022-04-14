<%@page import="com.java.jsp.AgentDAO"%>
<%@page import="com.java.jsp.Gender"%>
<%@page import="com.java.jsp.Agent"%>
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
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<%
	AgentDAO dao = new AgentDAO();
	int agentId = Integer.parseInt(request.getParameter("agentId"));
	Agent agent = dao.searchAgent(agentId);
%>
<div class="w3-container w3-center w3-animate-left">
<form mathod="get" action="UpdateAgent.jsp">
	<center>
		Agent Id :
		<input type="number" name="agentId" readonly="readonly" value=<%=agentId %>><br><br>
		Name :
		<input type="text" name="Name" value=<%=agent.getName() %>><br><br>
		City : 
		<input type="text" name="City" value=<%=agent.getCity() %>><br><br>
		Gender :
		<input type="text" name="GENDER" value=<%=agent.getGender() %>><br><br>
		MaritalStatus :
		<input type="number" name="MaritalStatus" value=<%=agent.getMaritalStatus() %>><br><br>
		Premium :
		<input type="number" name="Premium" value=<%=agent.getPremium() %>><br>
	<br>
	<input type="submit" value="Update Agent ">
	</center>
</form>
</div>
<%
	if(request.getParameter("agentId")!=null && request.getParameter("Premium")!=null){
		Agent agentUpdate = new Agent();
		agentUpdate.setAgentId(Integer.parseInt(request.getParameter("agentId")));
		agentUpdate.setName(request.getParameter("Name"));
		agentUpdate.setCity(request.getParameter("City"));
		agentUpdate.setGender(Gender.valueOf(request.getParameter("GENDER")));
		agentUpdate.setMaritalStatus(Integer.parseInt(request.getParameter("MaritalStatus")));
		agentUpdate.setPremium(Double.parseDouble(request.getParameter("Premium")));
		dao.updateAgent(agentUpdate);
%>
<jsp:forward page="AgentTable.jsp"></jsp:forward>

<%
	}
%>
</body>
</html>