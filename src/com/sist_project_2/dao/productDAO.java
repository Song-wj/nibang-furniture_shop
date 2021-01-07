package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.productVO;

public class productDAO extends DBConn{

	public boolean productInsert(productVO vo) {
		boolean result = false;
		try {
			String sql ="insert into product values( ?, ?, ?,? ,?,? , sysdate ,? ,? ,? ,?)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPid());
			pstmt.setString(2, vo.getPname());
			pstmt.setString(3, vo.getPinfo());
			pstmt.setString(4, vo.getPkind());
			pstmt.setInt(5, vo.getPrice());
			pstmt.setString(6, vo.getColor());
			pstmt.setString(7, vo.getImg1());
			pstmt.setString(8, vo.getImg2());
			pstmt.setString(9, vo.getSimg1());
			pstmt.setString(10, vo.getSimg2());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result= true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<productVO> getList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname, to_char(price, '9,999,999'), color, img1,img2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by pdate desc)";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPprice(rs.getString(3));
				vo.setColor(rs.getString(4));
				vo.setImg1(rs.getString(5));
				vo.setImg2(rs.getString(6));
				vo.setPdate(rs.getString(7));
				vo.setPinfo(rs.getString(8));
				vo.setPkind(rs.getString(9));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<productVO> getList(String keyword){
		ArrayList<productVO> list = new ArrayList<>();		
		try {
			String str="";
			if(keyword != "") {
				str="where pid='"+keyword+"' or pname='"+keyword+"' or pkind='"+keyword+"'";
			}
			
			String sql = "select pid , pname, to_char(price, '9,999,999'), color, img1,img2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind, simg1,simg2 from (select * from product order by pdate desc) "+str ;
			getStatement();
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPprice(rs.getString(3));
				vo.setColor(rs.getString(4));
				vo.setImg1(rs.getString(5));
				vo.setImg2(rs.getString(6));
				vo.setPdate(rs.getString(7));
				vo.setPinfo(rs.getString(8));
				vo.setPkind(rs.getString(9));
				vo.setSimg1(rs.getString(10));
				vo.setSimg2(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public productVO getData(String pid) {
		productVO vo = new productVO();
		try {
			String sql = "select pid ,pname, pinfo, pkind,price, to_char(price, '9,999,999'), color ,img1, img2 ,simg1, simg2 from product where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, pid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(Integer.parseInt(rs.getString(5)));
				vo.setPprice(rs.getString(6));
				vo.setColor(rs.getString(7));	
				vo.setImg1(rs.getString(8));	
				vo.setImg2(rs.getString(9));
				vo.setSimg1(rs.getString(10));	
				vo.setSimg2(rs.getString(11));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean productUpdate(productVO vo) {
		boolean result = false;
		try {
			String sql = "update product set pname =? ,color =? ,price =? ,img1=? ,img2=? , simg1=?, simg2=? , pinfo=? ,pkind=?  where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPname());
			pstmt.setString(2, vo.getColor());
			pstmt.setInt(3, vo.getPrice());
			pstmt.setString(4, vo.getImg1());
			pstmt.setString(5, vo.getImg2());
			pstmt.setString(6, vo.getSimg1());
			pstmt.setString(7, vo.getSimg2());
			pstmt.setString(8, vo.getPinfo());
			pstmt.setString(9, vo.getPkind());
			pstmt.setString(10, vo.getPid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	public boolean productUpdate1(productVO vo) {
		boolean result = false;
		try {
			String sql = "update product set pname =? ,color = ?, price = ? ,img1=? ,simg1=? ,pinfo = ?, pkind =? where pid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPname());			
			pstmt.setString(2, vo.getColor());
			pstmt.setInt(3, vo.getPrice());
			pstmt.setString(4, vo.getImg1());
			pstmt.setString(5, vo.getSimg1());
			pstmt.setString(6, vo.getPinfo());
			pstmt.setString(7, vo.getPkind());
			pstmt.setString(8, vo.getPid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean productUpdate2(productVO vo) {
		boolean result = false;
		try {
			String sql = "update product set pname =? , color =? ,price =? ,img2=? ,simg2=? ,pinfo=? , pkind=? where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPname());			
			pstmt.setString(2, vo.getColor());
			pstmt.setInt(3, vo.getPrice());	
			pstmt.setString(4, vo.getImg2());
			pstmt.setString(5, vo.getSimg2());
			pstmt.setString(6, vo.getPinfo());
			pstmt.setString(7, vo.getPkind());
			pstmt.setString(8, vo.getPid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean productUpdate3(productVO vo) {
		boolean result = false;
		try {
			String sql = "update product set pname =? ,pinfo=? , pkind =? ,price =? ,color=? where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPname());
			pstmt.setString(2, vo.getPinfo());
			pstmt.setString(3, vo.getPkind());
			pstmt.setInt(4, vo.getPrice());
			pstmt.setString(5, vo.getColor());
			pstmt.setString(6, vo.getPid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean productDelete(String pid) {
		boolean result = false;
		try {
			String sql = "delete from product where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, pid);
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<productVO> getRecommandList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql ="select simg1,pinfo,to_char(price, '9,999,999'), pid from( select * from product order by DBMS_RANDOM.RANDOM) where rownum < 7";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setSimg1(rs.getString(1));
				vo.setPinfo(rs.getString(2));
				vo.setPprice(rs.getString(3));
				vo.setPid(rs.getString(4));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
}
