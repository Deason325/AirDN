package com.dn.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.dn.Beans.RegisterBean;

public class PassengerDB {
	String s1 = null;
	public String insertPassenger(RegisterBean rb) {
		MyDB db = new MyDB();
		Connection con = db.getCon();
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO Passenger (`lastName`,`firstName`,`phoneNumber`)"
					+ " VALUE ('"+rb.getLastName()+"','"+rb.getFirstName()+"','"+rb.getPhone()+"')");
			s1 = "passenger added";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s1;
	}
}