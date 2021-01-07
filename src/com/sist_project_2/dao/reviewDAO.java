package com.sist_project_2.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist_project_2.vo.messageVO;
import com.sist_project_2.vo.reviewVO;

public class reviewDAO extends DBConn{

	/**	 insert : 리뷰		**/
	public boolean getreviewInsert(reviewVO vo) {
		boolean result = false;

		try {
			String sql = "insert into nibangreview values('r_'||SQE_NIBANG_REVIEW.nextval,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);

			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getOid());
			pstmt.setString(3, vo.getR_title());
			pstmt.setString(4, vo.getR_content());
			pstmt.setString(5, vo.getR_satis());
			pstmt.setString(6, vo.getR_file());
			pstmt.setString(7, vo.getR_sfile());

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	/*
	 * select :review 작성가능한 상품평 리스트
	 **/
	
	 public ArrayList<reviewVO> getreviewList(String mid) {
		 ArrayList<reviewVO> list = new ArrayList<reviewVO>();
	 
		 try {
			 String sql = "select rid, r_sfile, r_title, r_content, r_satis from nibangreview where mid=? order by r_date desc";
			  getPreparedStatement(sql);
			  pstmt.setString(1, mid);
			  ResultSet rs = pstmt.executeQuery();
			  
			  while (rs.next()) {
				  reviewVO vo = new reviewVO();
				  vo.setRid(rs.getString(1));
				 
				  vo.setR_sfile(rs.getString(2));
				 
				  vo.setR_title(rs.getString(3));
				  vo.setR_content(rs.getString(4));
				  vo.setR_satis(rs.getString(5));
				 
			  
				  list.add(vo); 
				  }
			  } catch (Exception e) {
				  e.printStackTrace();
				}
			  
		 return list;
	  }
	
	
	
	
	
	/** update시 내용 가져오기 **/
	public reviewVO getContent(String rid) {
		reviewVO vo = new reviewVO();
		
		try {
			String sql = "select  rid, r_title, r_content, r_satis, r_file, r_sfile , mid "
					+ "from nibangreview where rid=? ";
			
			  getPreparedStatement(sql);
			  pstmt.setString(1,rid);
			  
			  ResultSet rs = pstmt.executeQuery();
			  if(rs.next()) {
				  vo.setRid(rs.getString(1));
				  vo.setR_title(rs.getString(2)); 
				  vo.setR_content(rs.getString(3));
				  vo.setR_satis(rs.getString(4));
				  vo.setR_file(rs.getString(5));
				  vo.setR_sfile(rs.getString(6));
				  vo.setMid(rs.getString(7));
			  }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	/**
	 * Update : 내용 업데이트 - 새로운 파일을 선택한 경우
	 */
	  public boolean getUpdate(reviewVO vo) {
		  boolean result = false;
	  
		  try { 
			  String sql ="update nibangreview set r_title=?, r_content=? , r_satis=?, " +
					  		" r_file=?, r_sfile=? where rid=?";
			  
			  	  getPreparedStatement(sql);
				  pstmt.setString(1, vo.getR_title());
				  pstmt.setString(2, vo.getR_content());
				  pstmt.setString(3, vo.getR_satis());
				  pstmt.setString(4, vo.getR_file());
				  pstmt.setString(5, vo.getR_sfile());
				  pstmt.setString(6, vo.getRid());
				  
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
	  public boolean getUpdateNofile(reviewVO vo) {
		  boolean result = false;
			  
			  try {
				  String sql ="update nibangreview set r_title=?, r_content=?, r_satis=? where rid=?";
				  
				  getPreparedStatement(sql);
				  pstmt.setString(1, vo.getR_title());
				  pstmt.setString(2, vo.getR_content());
				  pstmt.setString(3, vo.getR_satis());
				  pstmt.setString(4, vo.getRid());
			  
			  int val = pstmt.executeUpdate(); 
			  if(val != 0) result = true;
			  
			  } catch (Exception e) {
				  e.printStackTrace();
			  }
		
			  return result;
	  }
		
	  
	  

	
	
}
