package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.productVO;

public class categoryDAO  extends DBConn{

	public ArrayList<productVO> bedList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by pdate desc) where pkind ='침대'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> priceBedList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by price desc) where pkind ='침대'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> chairList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by pdate desc) where pkind ='의자'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> priceChairList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by price desc) where pkind ='의자'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> tableList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by pdate desc) where pkind ='책상'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<productVO> priceTableList(){
		ArrayList<productVO> list = new ArrayList<>();
		try {
			String sql = "select pid , pname,pinfo,pkind, price, color, simg1,simg2, to_char(pdate,'yy/mm/dd') pdate , pinfo, pkind from (select * from product order by price desc) where pkind ='책상'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				productVO vo = new productVO();
				vo.setPid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPinfo(rs.getString(3));
				vo.setPkind(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setColor(rs.getString(6));
				vo.setSimg1(rs.getString(7));
				vo.setSimg2(rs.getString(8));
				vo.setPdate(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setPkind(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
