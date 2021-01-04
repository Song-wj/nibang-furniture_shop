package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.orderVO;

public class orderDAO extends DBConn{
	
	
	
	public ArrayList<orderVO> getOrderList() {
		ArrayList<orderVO> list = new ArrayList<>();
		
		
		try {
			String sql = "select o.oid, m.name, o.rname, o.raddrnum, o.raddr, m.hp, o.rph, p.simg1, p.pname, p.pinfo, p.color, p.price, o.pcnt, o.total, to_char(o.rdate, 'yyyy/mm/dd') "
					+ "from nibangmember m, nibangorder o, product p "
					+ "where o.mid = m.mid and o.pid = p.pid";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				orderVO vo = new orderVO(); 
				vo.setOid(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setRname(rs.getString(3));
				vo.setRaddrnum(rs.getString(4));
				vo.setRaddr(rs.getString(5));
				vo.setHp(rs.getString(6));
				vo.setRph(rs.getString(7));
				vo.setSimg(rs.getString(8));
				vo.setPname(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setColor(rs.getString(11));
				vo.setPrice(rs.getString(12));
				vo.setPcnt(rs.getInt(13));
				vo.setTotal(rs.getString(14));
				vo.setRdate(rs.getString(15));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public orderVO getOrder() {
		orderVO vo = new orderVO(); 
		
		try {
			String sql = "select o.oid, m.name, o.rname, o.raddrnum, o.raddr, m.hp, o.rph, p.simg1, p.pname, p.pinfo, p.color, p.price, o.pcnt, o.total "
					+ "from nibangmember m, nibangorder o, product p "
					+ "where o.mid = m.mid and o.pid = p.pid";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setOid(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setRname(rs.getString(3));
				vo.setRaddrnum(rs.getString(4));
				vo.setRaddr(rs.getString(5));
				vo.setHp(rs.getString(6));
				vo.setRph(rs.getString(7));
				vo.setSimg(rs.getString(8));
				vo.setPname(rs.getString(9));
				vo.setPinfo(rs.getString(10));
				vo.setColor(rs.getString(11));
				vo.setPrice(rs.getString(12));
				vo.setPcnt(rs.getInt(13));
				vo.setTotal(rs.getString(14));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public void orderDelete(String oid) {
		try {
			String sql = "delete from nibangorder where oid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, oid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean orderWrite(orderVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into nibangorder values (?,?,?,?,?,?,?,?,?,?,?,sysdate)";//11개 컬럼 주문날짜는 필요없나?
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getOid());
			pstmt.setString(2, vo.getMid());
			pstmt.setString(3, vo.getPid());
			pstmt.setInt(4, vo.getPcnt());
			pstmt.setString(5, vo.getTotal());
			pstmt.setString(6, vo.getRname());
			pstmt.setString(7, vo.getRaddrnum());
			pstmt.setString(8, vo.getRaddr());
			pstmt.setString(9, vo.getRph());
			pstmt.setString(10, vo.getRrequest());
			pstmt.setString(11, vo.getOrder_chk());
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
