package com.sist_project_2.dao;
import java.sql.ResultSet;

import com.sist_project_2.vo.*;

public class nibangDAO extends DBConn{
	
	public boolean join(joinVO vo) {
		boolean result = false;
		try {
			String sql = "insert into nibangmember values(?,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1,vo.getEmail());
			pstmt.setString(2,vo.getPass());
			pstmt.setString(3,vo.getName());
			pstmt.setString(4,vo.getBirth());
			pstmt.setString(5,vo.getGender());
			pstmt.setString(6,vo.getPh());
			pstmt.setString(7,vo.getAddr_num());
			pstmt.setString(8,vo.getAddr());
			
			int count =pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean login(String id,String pass) {
		boolean result = false;
		try {
			String sql ="select count(*) from nibangmember where mid =? and pass=?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			
			rs.next(); 
			if(rs.getInt(1) !=0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean idCheck(String id) {
		boolean result =false;
		try {
			String sql = "select count(*) from nibangmember where mid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			rs.next();
			if(rs.getInt(1) !=0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/** header에  name(OOO님) 가져오기 **/
	public joinVO getName(String mid){
		joinVO vo = new joinVO();
		
		try {
			String sql = "select name from nibangmember where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
	
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) 
				vo.setName(rs.getString(1));
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}		
		
}//class