<%@page import="com.java.jsp.Agent"%>
<%@page import="com.java.jsp.AgentDAO"%>
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
	
	<style>
	body{
	background-color: aqua;
	border-radius: 20px;
	}
	</style>
</head>
<body>

	<%
		AgentDAO dao = new AgentDAO();
		Agent[] arrAgent = dao.showAgent();
	
	%>
	
	
	<div class="w3-container w3-center w3-animate-top">
	<table border="20" align="center" class = "table table-striped table-bordered">
		<tr class = "table-green">
		
			<th>Agent Id </th>
			
			<th>Agent Name</th>
			
			<th>Agent City</th>
			
			<th>Gender</th>
			
			<th>MaritalStatus</th>
			
			<th>Premium</th>
			
			<th>Update</th>
			
			<th>Delete</th>
		
		</tr>
		
		<%
		for(Agent agent : arrAgent){
		%>
		<tr>
			
			<td><%=agent.getAgentId() %></td>
			
			<td><%=agent.getName()%></td>
			
			<td><%=agent.getCity()%></td>
			
			<td><%=agent.getGender() %></td>
			
			<td><%=agent.getMaritalStatus() %></td>
			
			<td><%=agent.getPremium() %></td>
			
			<td><a href=UpdateAgent.jsp?agentId=<%=agent.getAgentId() %>>Update</a></td>
		    <td><a href=DeleteAgent.jsp?agentId=<%=agent.getAgentId() %>>Delete</a></td>
		</tr>
		
			<%
		}
		 %>
		
	</table>
	</div>
	<hr><hr>
	<table  border="12" align="center" class = "table table-striped table-bordered">
	<center>
	<a href="AddAgent.jsp">Add Agent Here </a>
	</center>
	</table>

</body>
</html>