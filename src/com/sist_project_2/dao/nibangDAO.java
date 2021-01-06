package com.sist_project_2.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist_project_2.vo.SessionVO;
import com.sist_project_2.vo.joinVO;

public class nibangDAO extends DBConn {

	public boolean join(joinVO vo) {
		boolean result = false;
		try {
			String sql = "insert into nibangmember values(?,?,?,?,?,?,?,?,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getBirth());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getPh());
			pstmt.setString(7, vo.getAddr_num());
			pstmt.setString(8, vo.getAddr());

			int count = pstmt.executeUpdate();
			if (count != 0)
				result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
/*
	public boolean login(String id, String pass) {
		boolean result = false;
		try {
			String sql = "select count(*) from nibangmember where mid =? and pass=?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);

			rs = pstmt.executeQuery();
			rs.next();
			if (rs.getInt(1) != 0)
				result = true;
*/
	public int idCheck(String id) {
		int result = 0;
		try {
			String sql = " select count(*) from nibangmember where mid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getInt(1) == 0)
					result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<joinVO> getMember() {
		ArrayList<joinVO> list = new ArrayList<>();
		
		try {
			String sql = "select mid, name, birth, gender, hp, addrnum, addr, to_char(mdate,'yyyy/mm/dd') from nibangmember";
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				joinVO vo = new joinVO();
				vo.setEmail(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setBirth(rs.getString(3));
				vo.setGender(rs.getString(4));
				vo.setPh(rs.getString(5));
				vo.setAddr_num(rs.getString(6));
				vo.setAddr(rs.getString(7));
				vo.setMdate(rs.getString(8));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
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
				
				//vo.setEmail(rs.getString(1))
				int eidx = rs.getString(1).indexOf("@");
				String email1 = rs.getString(1).substring(0, eidx);
				String email2 = rs.getString(1).substring(eidx);
				vo.setEmail1(email1);
				vo.setEmail2(email2);
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
				String addr3 = rs.getString(12).substring(idx + 1);
				vo.setAddr2(addr2);
				vo.setAddr3(addr3);
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public boolean getMemberUpdate(joinVO vo, String id) {
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
			if (val != 0)
				result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}// update

	/**
	 * login
	 */
	public SessionVO getLogin(joinVO vo) {
		SessionVO svo = new SessionVO();

		try {
			String sql = " SELECT count(*), name, mid FROM NIBANGMEMBER " + " WHERE MID=? AND PASS=? group by name ,mid";
			getPreparedStatement(sql);

			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				svo.setResult(rs.getInt(1));
				svo.setName(rs.getString(2));
				svo.setId(rs.getString(3));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return svo;
	}

	public joinVO findPass(String email, String name) {
		joinVO vo = new joinVO();
		try {
			String sql="select mid ,name from nibangmember where mid=? and name=?";
			getPreparedStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, name);
			rs =pstmt.executeQuery();
			if(rs.next()) {
				vo.setEmail(rs.getString(1));
				vo.setName(rs.getString(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public boolean changePass(String email, String pass) {
		boolean result = false;
		try {
			String sql = "update nibangmember set pass=? where mid = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, email);
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public joinVO findId(String ph) {
		joinVO vo = new joinVO();
		try {
			String sql="select mid ,name from nibangmember where hp=? ";
			getPreparedStatement(sql);
			pstmt.setString(1, ph);
			
			rs =pstmt.executeQuery();
			if(rs.next()) {
				vo.setEmail(rs.getString(1));
				vo.setName(rs.getString(2));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
