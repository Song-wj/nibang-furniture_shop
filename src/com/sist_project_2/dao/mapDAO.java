package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.locVO;
import com.sist_project_2.vo.mapVO;

public class mapDAO extends DBConn{

	public ArrayList<mapVO> getStoreList(String loc) {
		ArrayList<mapVO> list = new ArrayList<>();
		try {
			String sql ="select mimg,mloc,maddr,mph,mpark,mtime,mholiday from map where maddr like '%"+loc+"%'";
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				mapVO vo = new mapVO();
				
				vo.setMimg(rs.getString(1));
				vo.setMloc(rs.getString(2));
				vo.setMaddr(rs.getString(3));
				vo.setMph(rs.getString(4));
				vo.setMpark(rs.getString(5));
				vo.setMtime(rs.getString(6));
				vo.setMholiday(rs.getString(7));
				
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
		public ArrayList<locVO> getGu(String loc) {
			ArrayList<locVO> list = new ArrayList<>();
			try {
				String sql ="select gu from gulist where loc like '%" + loc +"%'";
				getStatement();
				rs = stmt.executeQuery(sql);
				while(rs.next()) {
					locVO vo = new locVO();
					vo.setGu(rs.getString(1));
					
					
					list.add(vo);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
			
	}
}
