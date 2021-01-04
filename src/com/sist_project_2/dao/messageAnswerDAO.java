package com.sist_project_2.dao;


import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist_project_2.vo.answerVO;
import com.sist_project_2.vo.messageVO;

public class messageAnswerDAO extends DBConn{

	
	 public ArrayList<messageVO> getInquiryList() {
		ArrayList<messageVO> list = new ArrayList<messageVO>();
	 
		try { 
			String sql = " select rownum rno ,sid, m_div, m_title, m_content, m_file," +
					" to_char(m_date,'yyyy.mm.dd') from (select * from message order by m_date desc)"  ;
	  
			getStatement(); rs = stmt.executeQuery(sql);
	  
			while (rs.next()) {
			  messageVO vo = new messageVO(); 
			  vo.setRno(rs.getInt(1));
			  vo.setSid(rs.getString(2)); 
			  vo.setM_div(rs.getString(3));
			  vo.setM_title(rs.getString(4)); 
			  vo.setM_content(rs.getString(5));
			  vo.setM_file(rs.getString(6)); 
			  vo.setM_date(rs.getString(7));
	  
			  list.add(vo); 
			  } 
		} catch (Exception e) { e.printStackTrace(); }
	  
			return list; 
	  }
	 

		/*
		 * public ArrayList<messageVO> getInquiryList(int start , int end) {
		 * ArrayList<messageVO> list = new ArrayList<messageVO>();
		 * 
		 * try { String sql =
		 * " select rownum rno ,sid, m_div, m_title, m_content, m_file," +
		 * " to_char(m_date,'yyyy.mm.dd') from (select * from message order by m_date desc) where rownum between ? and ?"
		 * ;
		 * 
		 * getPreparedStatement(sql); pstmt.setInt(1, start); pstmt.setInt(2, end); rs =
		 * pstmt.executeQuery();
		 * 
		 * while (rs.next()) { messageVO vo = new messageVO(); vo.setRno(rs.getInt(1));
		 * vo.setSid(rs.getString(2)); vo.setM_div(rs.getString(3));
		 * vo.setM_title(rs.getString(4)); vo.setM_content(rs.getString(5));
		 * vo.setM_file(rs.getString(6)); vo.setM_date(rs.getString(7));
		 * 
		 * list.add(vo); } } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * return list; }
		 */
	 
	
	public messageVO getContent(String sid) {
		messageVO vo = new messageVO();
		
		try {
			String sql = "select sid, m_div, m_title, m_content, m_file, m_sfile, m_date from message where sid=?";
			
			  getPreparedStatement(sql);
			  pstmt.setString(1,sid);
			  
			  ResultSet rs = pstmt.executeQuery();
			  if(rs.next()) {
				  vo.setSid(rs.getString(1));
				  vo.setM_div(rs.getString(2));
				  vo.setM_title(rs.getString(3)); 
				  vo.setM_content(rs.getString(4));
				  vo.setM_file(rs.getString(5));
				  vo.setM_sfile(rs.getString(6));
				  vo.setM_date(rs.getString(7));
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public boolean insertAnswer(String sid , String answer) {
		boolean result = false;

		try {
			String sql = "insert into messageanswer values(?,?,sysdate)";
			getPreparedStatement(sql);

			pstmt.setString(1, sid);
			pstmt.setString(2, answer);
			

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean updateAnswer(String sid , String answer) {
		boolean result = false;

		try {
			String sql = "update messageanswer set acontent =? where sid =?";
			getPreparedStatement(sql);

			pstmt.setString(1, answer);
			pstmt.setString(2, sid);
			

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean deleteAnswer(String sid ) {
		boolean result = false;

		try {
			String sql = "delete from message where sid =?";
			getPreparedStatement(sql);

			
			pstmt.setString(1, sid);
			

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public answerVO getAnswerContent(String sid) {
		answerVO vo = new answerVO();
		
		try {
			String sql = "select  sid, acontent, adate from messageanswer where sid=?";
			
			  getPreparedStatement(sql);
			  pstmt.setString(1,sid);
			  
			  ResultSet rs = pstmt.executeQuery();
			  if(rs.next()) {
	
				  vo.setSid(rs.getString(1));
				  vo.setAcontent(rs.getString(2)); 
				  vo.setAdate(rs.getString(3));
				  
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public int getListCount() {
		int result = 0;
		try {
			String sql ="select count(*) from message";
			getStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				result = rs.getInt(1);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String getAnswer(String sid) {
		String an ="";
		try {
			String sql="select acontent from messageanswer where sid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, sid);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				an= rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return an;
	}
	
	
}
