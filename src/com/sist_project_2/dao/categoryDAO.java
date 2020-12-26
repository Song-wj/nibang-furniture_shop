package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.productVO;

public class categoryDAO  extends DBConn{

	public ArrayList<productVO> categoryList(String type){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, to_char(price, '9,999,999'), color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate  from (select * from product order by pdate desc) where pkind =?";
			getPreparedStatement(sql);
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPprice(rs.getString(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> priceList(String type){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, to_char(price, '9,999,999'), color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate from (select * from product order by price desc) where pkind =?";
			getPreparedStatement(sql);
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPprice(rs.getString(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> searchList(String keyword){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, to_char(price, '9,999,999'), color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate  from (select * from product order by pdate desc) where pkind like '%"+keyword +"%' or pname like '%" +keyword+ "%'";
			getStatement();			
			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPprice(rs.getString(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));

				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> priceSearchList(String keyword){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, to_char(price, '9,999,999'), color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate  from (select * from product order by price desc) where pkind like '%"+keyword +"%' or pname like '%" +keyword+ "%'";
			getStatement();			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPprice(rs.getString(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int getCount(String keyword) {
		int result =0;
		try {
			String sql ="select count(*) from product where pkind like '%"+keyword +"%' or pname like '%" +keyword+ "%'";
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
}
