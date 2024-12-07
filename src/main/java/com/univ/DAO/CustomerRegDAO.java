package com.univ.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.univ.DB.DBConnection;
import com.univ.DTO.CustomerRegDTO;


public class CustomerRegDAO {
	public int insertData(CustomerRegDTO t1) {
	    int x=0;
		try {
			Connection  con1=DBConnection.getConn();
			PreparedStatement ps=con1.prepareStatement("insert into CustomerReg(name,email,mob,city,unm,psw) values(?,?,?,?,?,?)");
			ps.setString(1,t1.getName());
			ps.setString(2,t1.getEmail());
			ps.setString(3,t1.getMob());
			ps.setString(4,t1.getCity());
			ps.setString(5,t1.getUnm());
			ps.setString(6,t1.getPsw());
			
		
		x=ps.executeUpdate();
		}catch(Exception tt) 
		{
			System.out.println(tt);
		}
		return x;
	}
	public List CustomerloginChk(CustomerRegDTO t1) {
	    ResultSet rs;
	    List lst=null;
		try {
			Connection  con1=DBConnection.getConn();
			PreparedStatement ps=con1.prepareStatement("select * from CustomerReg where unm=? AND psw=?");
			ps.setString(1,t1.getUnm());
			ps.setString(2,t1.getPsw());

			
		
		rs=ps.executeQuery();
		if(rs.next()) {
			lst=new ArrayList<>();
			lst.add(rs.getInt(1));
			lst.add(rs.getString(2));
			lst.add(rs.getString(3));
			lst.add(rs.getString(4));
			lst.add(rs.getString(5));
			lst.add(rs.getString(6));
			lst.add(rs.getString(7));
			
		}
		}catch(Exception tt) 
		{
			System.out.println(tt);
		}
		return lst;
	}

}
