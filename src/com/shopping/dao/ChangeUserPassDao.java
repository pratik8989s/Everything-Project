package com.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopping.beans.UserUpdate;
import com.shopping.util.DBUtil;

public class ChangeUserPassDao {

	public static String updateUserPass(String oldpass,String newpass)
	{
		Connection con=null;
		PreparedStatement ps=null;
		
		String b = "false";
		try{
		  con = DBUtil.getDBCon(); 
		      
		
		 ps=con.prepareStatement("update customer1 set password=? where password=?");   
		ps.setString(1, newpass);
		ps.setString(2, oldpass);
		
		
		int result =ps.executeUpdate();
		
		
		  
		
		 if(result!=0){
		    	b = "true";
		    	con.commit();
		    	return b;
		    }}
		catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			try {
			
				ps.close();
				con.close();
			} catch (SQLException e) {}
		}
		
		return b;
		
		
}
}


