package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.chatVO;

public class chatDAO extends DBConn{
	
	
	public ArrayList<chatVO> getChat() {
		ArrayList<chatVO> list = new ArrayList<>();
		
		try {
			//String sql = "select mid, chatcontent, to_char(chatdate, 'pm hh:mi') from nibangchat where mid=?";
			String sql = "select mid, chatcontent, to_char(chatdate, 'pm hh:mi') from nibangchat";
			getPreparedStatement(sql);
			//pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				chatVO vo = new chatVO();
				vo.setMid(rs.getString(1));
				vo.setChatcontent(rs.getString(2));
				vo.setChatdate(rs.getString(3));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean insertChat(chatVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into nibangchat values(?,?,sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getChatcontent());
			pstmt.executeUpdate();
			//int val = pstmt.executeUpdate();
			//if(val != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
