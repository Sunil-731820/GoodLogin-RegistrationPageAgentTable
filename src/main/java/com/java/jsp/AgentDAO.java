package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AgentDAO {
	Connection connection;
	PreparedStatement pst;
	
//	this is the function to generate the agentid Automatically
	
	public int generateAgentNo() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "select max(agentId)+1 ano from agent ";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		res.next();
		int agentId = res.getInt("ano");
		return agentId;
	}
	
	//This is the function for delete the records from the database 
	
	public String deleteAgent(int agentId) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "delete from agent where agentId=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, agentId);
		pst.executeUpdate();
		return "agent deleted SucceessFully";
	}
	
	
	//This is the function for searching the records from the database 
	
	public Agent searchAgent(int agentId) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd  ="select *from agent where agentId=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, agentId);
		ResultSet res = pst.executeQuery();
		Agent agent = null;
		if(res.next()) {
			agent = new Agent();
			agent.setAgentId(res.getInt("AgentId"));
			agent.setName(res.getString("name"));
			agent.setCity(res.getString("city"));
			agent.setGender(Gender.valueOf(res.getString("gender")));
			agent.setMaritalStatus(res.getInt("maritalStatus"));
			agent.setPremium(res.getDouble("premium"));
			
		}
		return agent;
		
	}
	
	//This is the function for update the records for Agent if needs
	
	public String updateAgent(Agent agent) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
//		String gender = "MALE";
//		Gender g = Gender.valueOf(gender);
		String cmd = "update agent set Name=? , City=?,GENDER=?,MaritalStatus=?,Premium=? where AgentId=?";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, agent.getName());
		pst.setString(2, agent.getCity());
		pst.setString(3, agent.getGender().toString());
		pst.setInt(4, agent.getMaritalStatus());
		pst.setDouble(5, agent.getPremium());
		pst.setInt(6, agent.getAgentId());
		pst.executeUpdate();
		return "Agent Data UPdated ";
	}
	//This is the function to Add Records into the Database 
	
	public String addAgent(Agent agent) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "insert into agent(agentId,name,city,Gender,maritalStatus,premium)"+
				" values (?,?,?,?,?,?)";
		
		pst = connection.prepareStatement(cmd);
		pst.setInt(1,agent.getAgentId());
		pst.setString(2, agent.getName());
		pst.setString(3, agent.getCity());
		pst.setString(4, agent.getGender().toString());
		pst.setInt(5, agent.getMaritalStatus());
		pst.setDouble(6, agent.getPremium());
		pst.executeUpdate();
		return "Agent Added SucceessFull ";	
	}
	
	//This is the function for showing the records from the Database 
	public Agent[] showAgent() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "select *from agent";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		List<Agent> agentList = new ArrayList<Agent>();
		Agent agent = null;
		while(res.next()) {
			agent = new Agent();
			agent.setAgentId(res.getInt("AgentID"));
			agent.setName(res.getString("name"));
			agent.setCity(res.getString("city"));
			agent.setGender(Gender.valueOf(res.getString("gender")));
			agent.setMaritalStatus(res.getInt("maritalStatus"));
			agent.setPremium(res.getDouble("premium"));
			agentList.add(agent);
		}
		return agentList.toArray(new Agent[agentList.size()]);
		
	}

}

