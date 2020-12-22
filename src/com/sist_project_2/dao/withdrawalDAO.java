package com.sist_project_2.dao;

import com.sist_project_2.vo.withdrawalVO;

public class withdrawalDAO extends DBConn{
	
	public void withdrawalReason(withdrawalVO vo) {
		//boolean result = false;
		
		try {
			String sql = "insert into withdrawal values(? ,?, ?, sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1,vo.getDid());
			pstmt.setString(2,vo.getD_content());
			pstmt.setString(3,vo.getD_reason());
			pstmt.executeUpdate();
			//int val = pstmt.executeUpdate();
			//if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean withdrawal(String mid) {
		boolean result = false;
		
		try {
			String sql = "delete from nibangmember where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
