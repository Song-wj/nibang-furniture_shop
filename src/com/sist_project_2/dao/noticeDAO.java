package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.noticeVO;

public class noticeDAO extends DBConn{
	
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = "select count(*) from notice";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public boolean insertNotice(noticeVO vo) {
		boolean result = false;
		try {
			String sql = "insert into notice values('n_'||SQE_NIBANG_NOTICE.NEXTVAL,?,?,sysdate,0,?,?)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<noticeVO> getList() {
		ArrayList<noticeVO> list = new ArrayList<>();
		try {
			String sql = "select rownum rno , nid, n_title, n_content, to_char(n_date,'yy/mm/dd') ,n_views,n_sfile from (select * from notice order by n_date desc) ";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				noticeVO vo = new noticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNcontent(rs.getString(4));
				vo.setNdate(rs.getString(5));
				vo.setNviews(rs.getString(6));
				vo.setNsfile(rs.getString(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<noticeVO> getList(int start, int end) {
		ArrayList<noticeVO> list = new ArrayList<>();
		try {
			String sql = "select * from (select rownum rno , nid, n_title, n_content, to_char(n_date,'yy/mm/dd') ,n_views, n_sfile "
					+ "from notice order by n_date desc) "
					+ "where rno between ? and ? order by rno";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				noticeVO vo = new noticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNcontent(rs.getString(4));
				vo.setNdate(rs.getString(5));
				vo.setNviews(rs.getString(6));
				vo.setNsfile(rs.getString(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public noticeVO getContent(String nid) {
		noticeVO vo = new noticeVO();
		try {
			String sql ="select n_title, n_content, to_char(n_date,'yy/mm/dd') ,n_views ,n_sfile from notice where nid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				vo.setNtitle(rs.getString(1));
				vo.setNcontent(rs.getString(2));
				vo.setNdate(rs.getString(3));
				vo.setNviews(rs.getString(4));
				vo.setNsfile(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean updateNotice(noticeVO vo) {
		boolean result = false;
		try {
			String sql ="update notice set n_title =? , n_content=?, n_file=?, n_sfile=? where nid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			pstmt.setString(5, vo.getNid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean updateNotice1(noticeVO vo) {
		boolean result = false;
		try {
			String sql ="update notice set n_title =? , n_content=?  where nid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean noticeDelete(String nid) {
		boolean result = false;
		try {
			String sql ="delete from notice where nid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public void updateView(String nid) {

		try {
			String sql ="update notice set n_views = n_views+1 where nid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	public int getView(String nid) {
		updateView(nid);
		int result = 0;
		try {
			String sql ="select n_views from notice where nid =? ";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
