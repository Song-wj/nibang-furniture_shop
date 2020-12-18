package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.productVO;

public class productDAO extends DBConn{

	public boolean productInsert(productVO vo) {
		boolean result = false;
		try {
			String sql ="insert into product values( ?, ? ,? ,? , sysdate ,? ,? ,? ,?)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPid());
			pstmt.setString(2, vo.getPname());
			pstmt.setInt(3, vo.getPrice());
			pstmt.setString(4, vo.getColor());
			pstmt.setString(5, vo.getImg1());
			pstmt.setString(6, vo.getImg2());
			pstmt.setString(7, vo.getSimg1());
			pstmt.setString(8, vo.getSimg2());
			
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
			String sql = "select pid , pname, price, color, img1,img2, to_char(pdate,'yy/mm/dd') pdate from (select * from product order by pdate desc)";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPrice(rs.getInt(3));
				vo.setColor(rs.getString(4));
				vo.setImg1(rs.getString(5));
				vo.setImg2(rs.getString(6));
				vo.setPdate(rs.getString(7));
				
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
			String sql = "select pid ,pname, price, color from product where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, pid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPrice(rs.getInt(3));
				vo.setColor(rs.getString(4));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean productUpdate(productVO vo ,String pid) {
		boolean result = false;
		try {
			String sql = "update product set pname =? , color =? ,price =? where pid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPname());
			pstmt.setString(2, vo.getColor());
			pstmt.setInt(3, vo.getPrice());
			pstmt.setString(4, pid);
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
	
}
