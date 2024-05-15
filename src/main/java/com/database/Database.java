package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.User;

public class Database 
{
	static Connection con;
public void createConnection()
{
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "system","tiger");
//		System.out.println("done.....!");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
public void addUser(User user)
{
	new Database().createConnection();
	try {
		new Database().createConnection();
		PreparedStatement pstmt=con.prepareStatement("insert into NETFLIX_USERS (EMAIL,NAME,PASSSWORD,PACK,PRICE)values(?,?,?,?,?)");
	pstmt.setString(1, user.getEmail());
	pstmt.setString(2, "user");
	pstmt.setString(3, user.getPword());
	pstmt.setString(4, user.getPack());
	pstmt.setString(5, user.getPrice());
	pstmt.executeUpdate();
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
public User getUserByEmail(String email)
{
	new Database().createConnection();
	User user=new User();
	try {
		
		PreparedStatement pstmt=con.prepareStatement("select * from NETFLIX_USERS where EMAIL=?");
		pstmt.setString(1, email);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next())
		{
			user.setEmail(rs.getString("EMAIL"));
			user.setName(rs.getString("NAME"));
			user.setPword(rs.getString("PASSSWORD"));
			user.setPack(rs.getString("PACK"));
			user.setPrice(rs.getString("PRICE"));
		}
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return  user;
	
}
}
