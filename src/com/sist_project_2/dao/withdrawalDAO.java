package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.withdrawalVO;

public class withdrawalDAO extends DBConn{
	
	public ArrayList<withdrawalVO> getWithdrawalList() {
		ArrayList<withdrawalVO> list = new ArrayList<withdrawalVO>();
		
		try {
			String sql = "select did, d_content, d_reason, to_char(d_date,'yyyy/mm/dd') from withdrawal";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				withdrawalVO vo = new withdrawalVO();
				vo.setDid(rs.getString(1));
				vo.setD_content(rs.getString(2));
				vo.setD_reason(rs.getString(3));
				vo.setDdate(rs.getString(4));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
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
