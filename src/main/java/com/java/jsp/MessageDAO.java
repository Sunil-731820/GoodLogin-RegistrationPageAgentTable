package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MessageDAO {
	Connection connection;
	PreparedStatement pst;
	
	public String addMessage(Message message) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "insert into sendmessage(name,email,message)"+
				" values (?,?,?)";
		
		pst = connection.prepareStatement(cmd);
		pst.setString(1,message.getName());
		pst.setString(2,message.getEmail());
		pst.setString(3,message.getMessage());
		pst.executeUpdate();
		return "Message  Added SucceessFull ";	
	}
	

}
