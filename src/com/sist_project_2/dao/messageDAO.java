package com.sist_project_2.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist_project_2.vo.messageVO;

public class messageDAO extends DBConn {

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
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/*
	 * select : 1:1 문의 전체 리스트
	 **/
	public ArrayList<messageVO> getInquiryList() {
		ArrayList<messageVO> list = new ArrayList<messageVO>();

		try {
			String sql = " select sid, m_div, m_title, m_content, m_file,"
					+ " to_char(m_date,'yyyy.mm.dd') from (select * from message order by m_date desc)";

			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				messageVO vo = new messageVO();
				vo.setSid(rs.getString(1));
				vo.setM_div(rs.getString(2));
				vo.setM_title(rs.getString(3));
				vo.setM_content(rs.getString(4));
				vo.setM_file(rs.getString(5));
				vo.setM_date(rs.getString(6));

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	/**Select : 1:1문의 내용 불러오기**/
	public messageVO getContent(String sid) {
		messageVO vo = new messageVO();
		
		try {
			String sql = "select m_title, m_content from message where sid=?";
			getPreparedStatement(sql);
			pstmt.setString(1,sid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				//vo.setSid(rs.getString(1));
				//vo.setM_div(rs.getString(2));
				vo.setM_title(rs.getString(1));
				vo.setM_content(rs.getString(2));
				//vo.setM_file(rs.getString(5));
				//vo.setM_sfile(rs.getString(6));
				//vo.setM_date(rs.getString(7));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	
	/**1:1 문의 삭제**/
	public boolean getDelete(String sid) {
		boolean result = false;
		
		try {
			String sql = "delete from message where sid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, sid);
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	/**
	 * Update : 내용 업데이트 - 새로운 파일을 선택한 경우
	 */
	  public boolean getUpdate(messageVO vo) {
		  boolean result = false;
	  
		  try { 
			  String sql ="update cgvboard set m_div=?, m_title=?, m_content=? " +
					  	" , m_file=?, m_sfile=? where sid=?"; getPreparedStatement(sql);
				  pstmt.setString(1, vo.getM_div()); pstmt.setString(2, vo.getM_title());
				  pstmt.setString(3, vo.getM_content()); pstmt.setString(4, vo.getM_file());
				  pstmt.setString(5, vo.getM_sfile()); pstmt.setString(6, vo.getSid());
				  
				  int val = pstmt.executeUpdate(); if(val != 0) result = true;
		  
		  } catch (Exception e) {
			  e.printStackTrace();
			  }
		  return result;
	  }
		   
		/**
		 * Update : 내용 업데이트 - 새로운 파일을 선택한 경우
		 */
	  public boolean getUpdateNofile(messageVO vo) { boolean result = false;
			  
			  try {
				  String sql ="update message set m_div, m_title=?, m_content=? where sid=?";
				  
				  getPreparedStatement(sql);
				  pstmt.setString(1, vo.getM_div());
				  pstmt.setString(2, vo.getM_title());
				  pstmt.setString(3, vo.getM_content());
				  pstmt.setString(4, vo.getSid());
			  
			  int val = pstmt.executeUpdate(); 
			  if(val != 0) result = true;
			  
			  } catch (Exception e) {
				  e.printStackTrace();
				  }
		
			  return result;
	  }
			 
}
