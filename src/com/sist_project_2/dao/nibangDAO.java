package com.sist_project_2.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist_project_2.vo.faqVO;
import com.sist_project_2.vo.joinVO;
import com.sist_project_2.vo.messageVO;

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
				System.out.println(addr2+ "," + addr3);

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
	
	/* FAQ */
	/**
	 * insertFAQ : faq 등록
	 */
	public boolean insertFAQ(faqVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into faq values('f_'||sqe_nibang_faq.nextval,?,?,?,0,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getF_div());
			pstmt.setString(2, vo.getF_title());
			pstmt.setString(3, vo.getF_content());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * getFAQList : faq 리스트 출력
	 */
	public ArrayList<faqVO> getFAQList() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq order by f_date desc";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setFid(rs.getString(1));
				vo.setF_div(rs.getString(2));
				vo.setF_title(rs.getString(3));
				vo.setF_content(rs.getString(4));
				vo.setF_date(rs.getString(5));
				vo.setF_views(rs.getInt(6));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * getFAQContent : faq Content 출력
	 */
	public faqVO getFAQContent(String fid) {
		faqVO vo = new faqVO();
		
		try {
			String sql = "select fid, f_div, f_title, f_content, f_views, to_char(f_date,'yyyy.mm.dd') from faq "
					+ "where fid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, fid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setFid(rs.getString(1));
				vo.setF_div(rs.getString(2));
				vo.setF_title(rs.getString(3));
				vo.setF_content(rs.getString(4));
				vo.setF_views(rs.getInt(5));
				vo.setF_date(rs.getString(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}	
	
	/**
	 * faqUpdate : faq 수정
	 */
	public boolean faqUpdate(faqVO vo) {
		boolean result = false;
		
		try {
			String sql ="update faq set f_div=?, f_title=?, f_content=? where fid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getF_div());
			pstmt.setString(2, vo.getF_title());
			pstmt.setString(3, vo.getF_content());
			pstmt.setString(4, vo.getFid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * faqDelete : faq 삭제
	 */
	public boolean faqDelete(String fid) {
		boolean result = false;
		
		try {
			String sql = "delete from faq where fid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, fid);
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * faq 조회수 업데이트
	 */
	public void nibangViews(String fid) {
		try {
			String sql = "update faq set f_views=f_views+1 where fid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, fid);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	
	
}
