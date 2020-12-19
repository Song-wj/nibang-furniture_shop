package com.sist_project_2.dao;

import com.sist_project_2.vo.messageVO;

public class messageDAO extends DBConn{
	
	/*
	 * insert : 1:1 문의
	 **/
	public boolean getMessageInsert(messageVO vo, String mid) {
		boolean result = false;
		
		try {
			String sql = "insert into message values('m_'||sqe_nibang_message.nextval,?,?,?,?,?,sysdate,?)";
			getPreparedStatement(sql);
			
			pstmt.setString(1, mid);
			pstmt.setString(2, vo.getM_div());
			pstmt.setString(3, vo.getM_title());
			pstmt.setString(4, vo.getM_content());
			pstmt.setString(5, vo.getM_file());
			pstmt.setString(6, vo.getM_sfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0 ) result = true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	/*
	 *select : 1:1 문의 전체 리스트
	 **/
	public messageVO getInquiryList() {
		messageVO vo = new messageVO();
			
			try {
				String sql = "select sid, mid, m_div, m_title, m_content, m_file,"
						+ " to_char(mdate,'yyyy.mm.dd') from message";		
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return vo;
		}

	
	
}
