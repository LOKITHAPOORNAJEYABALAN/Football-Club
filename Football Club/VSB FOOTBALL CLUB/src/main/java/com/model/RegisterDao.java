package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	public RegisterDao() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vsbdb", "root", "root");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
		public void storeData(Register r) {
			String sql="insert into registerDetails(name, date, gender, contact, experiencelevel, position, email) values(?, ?, ?, ?, ?, ?, ?)";
			try {
				pst=con.prepareStatement(sql);
				pst.setString(1, r.getName());
				pst.setString(2, r.getDate());
				pst.setString(3, r.getGender());
				pst.setString(4, r.getContact());
				pst.setString(5, r.getExperiencelevel());
				pst.setString(6, r.getPosition());
				pst.setString(7, r.getEmail());
				pst.executeUpdate();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
	}
		

}
