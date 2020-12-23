package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.faqVO;

public class faqDAO extends DBConn{

	
	/**
	 * 검색 결과
	 */
	public ArrayList<faqVO> searchResult(String content) {
		ArrayList<faqVO> list = new ArrayList<faqVO>();
		
		try {
			//String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
			//		+ "from faq where f_title like '%"+content+"%' order by f_date desc) "
			//		+ "where rno between "+start+" and " + end + " ";
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_title like '%"+content+"%' order by f_date desc";
			getStatement();
			rs = stmt.executeQuery(sql);
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
	
	public int getSearchCount(String content) {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_title like '%"+content+"%'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountProduct() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='상품'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountOrder() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='주문/결제/취소'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountDelivery() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='배송/시공'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountExchange() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='교환/반품'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountAS() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='A/S'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountMember() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='회원정보'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int getListCountSite() {
		int result = 0;
		
		try {
			String sql = "select count(*) from faq where f_div='사이트이용'";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
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
	 * getFAQList : faq 리스트 페이징
	 */
	public ArrayList<faqVO> getFAQList(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq order by f_date desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
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
	
	public int faqHits(String fid) {
		nibangViews(fid);
		int result = 0;
		try {
			String sql = "select f_views from faq where fid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, fid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/** 조회수 순 **/
	public ArrayList<faqVO> getFAQListHits() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq order by f_views desc";
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
	}// 조회수 순
	
	public ArrayList<faqVO> getFAQListHits(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 조회수 순 페이징
	
	
	/** 상품만 **/
	public ArrayList<faqVO> getFAQListProduct() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='상품' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListProduct(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='상품' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 상품만 페이징
	
	/** 주문/결제/취소만 **/
	public ArrayList<faqVO> getFAQListOrder() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='주문/결제/취소' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListOrder(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='주문/결제/취소' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 주문/결제/취소 페이징
	
	/** 배송/시공만 **/
	public ArrayList<faqVO> getFAQListDelivery() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='배송/시공' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListDelivery(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='배송/시공' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 배송/시공 페이징
	
	/** 교환/반품만 **/
	public ArrayList<faqVO> getFAQListExchage() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='교환/반품' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListExchage(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='교환/반품' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 교환/반품 페이징
	
	/** A/S **/
	public ArrayList<faqVO> getFAQListAS() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='A/S' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListAS(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='A/S' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// A/S 페이징
	
	/** 회원정보 **/
	public ArrayList<faqVO> getFAQListMember() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='회원정보' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListMember(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='회원정보' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 회원정보 페이징
	
	/** 사이트용 **/
	public ArrayList<faqVO> getFAQListSite() {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views from faq where f_div='사이트이용' order by f_views desc";
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
	
	public ArrayList<faqVO> getFAQListSite(int start, int end) {
		ArrayList<faqVO> list = new ArrayList<>();
		
		try {
			String sql ="select * from (select rownum rno, fid, f_div, f_title, f_content, to_char(f_date,'yyyy.mm.dd'), f_views "
					+ "from faq where f_div='사이트이용' order by f_views desc) "
					+ "where rno between ? and ?";
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqVO vo = new faqVO();
				vo.setRno(rs.getInt(1));
				vo.setFid(rs.getString(2));
				vo.setF_div(rs.getString(3));
				vo.setF_title(rs.getString(4));
				vo.setF_content(rs.getString(5));
				vo.setF_date(rs.getString(6));
				vo.setF_views(rs.getInt(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}// 사이트 페이징
}
