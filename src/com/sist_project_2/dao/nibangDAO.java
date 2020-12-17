package com.sist_project_2.dao;

import java.sql.ResultSet;

import com.sist_project_2.vo.joinVO;

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
		
	/**
	 * MemberUpdate : 회원정보 수정
	 */
	public joinVO getMemberInfo(String mid) {
		joinVO vo = new joinVO();
		try {
			String sql = "select mid, pass, name, substr(birth,1,4), substr(birth,6,2), substr(birth,9,2), gender, "
					+ "substr(hp,1,3), substr(hp,5,4), substr(hp,10,4), addrnum, addr"
					+ " from nibangmember where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
	
				vo.setEmail(rs.getString(1));
				vo.setPass(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setBirth1(rs.getString(4));
				vo.setBirth2(rs.getString(5));
				vo.setBirth3(rs.getString(6));
				vo.setGender(rs.getString(7));
				vo.setPh1(rs.getString(8));
				vo.setPh2(rs.getString(9));
				vo.setPh3(rs.getString(10));
				vo.setAddr_num(rs.getString(11));
				int idx = rs.getString(12).indexOf(",");
				String addr2 = rs.getString(12).substring(0, idx);	  
				String addr3 = rs.getString(12).substring(idx+1);
				vo.setAddr2(addr2);
				vo.setAddr3(addr3);

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean getMemberUpdate(joinVO vo ,String id) {
		boolean result = false;
		
		try {
			String sql = "update nibangmember set pass=?, name=?, birth=?, "
					+ "gender=?, hp=?, addrnum=? , addr =? where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPass());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getBirth());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getPh());
			pstmt.setString(6, vo.getAddr_num());
			pstmt.setString(7, vo.getAddr());
			pstmt.setString(8, id);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	             
	//update
	
	
	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
