package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDAO {
	Connection connection;
	PreparedStatement pst;
	
	public int validate(String userName , String passCode) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "select count(*) cnt from users where userName=? and passCode=?";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, userName);
		pst.setString(2, passCode);
		ResultSet res = pst.executeQuery();
		res.next();
		int count = res.getInt("cnt");
		return count;
	}
	
	public String registerAgent(Users user) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnetion();
		String cmd = "insert into users(userName,passCode)"+
				" values (?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, user.getUserName());
		pst.setString(2, user.getPassCode());
		pst.executeUpdate();
		return "User Regsitered SuccessFully";
	}

}
