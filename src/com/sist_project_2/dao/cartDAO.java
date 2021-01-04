package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.cartVO;

public class cartDAO extends DBConn{
      /**
       * insertCart : cart 등록
       */
		
		/*
		 * public boolean insertCart(cartVO vo) { boolean result = false;
		 * 
		 * try {
		 * 
		 * String sql = "insert into cart values(?,?,?,sysdate)";
		 * 
		 * getPreparedStatement(sql); //pstmt.setString(1, vo.getMid());
		 * pstmt.setString(1, "dd@gmail.com"); pstmt.setString(2, vo.getPid());
		 * pstmt.setInt(3, vo.getC_qty());
		 * 
		 * int val = pstmt.executeUpdate(); if (val != 0) result = true;
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 * 
		 * return result; }
		 */
		
      
      /**
       * getCart
       */
      public ArrayList<cartVO> getCart() {
        ArrayList<cartVO>  list = new ArrayList<cartVO>(); 
        
      
        try {
           
           String sql = "select p.pname, p.pinfo, p.price, p.color, p.simg1, c.c_qty, c.c_date, p.pid"
                             + " from nibangmember m, cart c, product p " +
                             " where c.mid = m.mid and c.pid = p.pid";
          
           getPreparedStatement(sql); 
           rs = pstmt.executeQuery();
           
           while(rs.next()) { 
              cartVO vo = new cartVO();
              vo.setPname(rs.getString(1));
              vo.setPinfo(rs.getString(2));
              vo.setPrice(rs.getInt(3));
              vo.setColor(rs.getString(4));
              vo.setSimg1(rs.getString(5));
              vo.setC_qty(rs.getInt(6));
              vo.setC_date(rs.getString(7));
              vo.setPid(rs.getString(8));
              list.add(vo);
           }
        
        } catch (Exception e) { e.printStackTrace(); }
       
        
        return list;
     }
      
      /**
       * 삭제
       */
      public boolean cartDelete(String pid) {
    	boolean result = false;
  		try {
  			String sql = "delete from cart where pid=?";
  			getPreparedStatement(sql);
  			pstmt.setString(1, pid);
  			int val = pstmt.executeUpdate();
	        if (val != 0) result = true;
  			
  		} catch (Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
      
      /**
       * 선택 삭제
       */
      public boolean cartCheckedDelete(String[] pidList) {
    	boolean result = false;
    	String pidListStr = "";
    	for(int i=0; i<pidList.length; i++) {
    		pidListStr += "?";
    		if(i != pidList.length-1) {
    			pidListStr += ",";
    		}		
    	}
  		try {
  			String sql = "delete from cart where pid in ( " + pidListStr +" )";
  			System.out.println(sql);
  			getPreparedStatement(sql);
  			for(int i=1; i<=pidList.length;i++) {
  				pstmt.setString(i, pidList[i-1]);
  			}
  			int val = pstmt.executeUpdate();
	        if (val != 0) result = true;
  			
  		} catch (Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
      
      /**
       * 업데이트
       */

		
		  public boolean insertCart(cartVO vo) { boolean result = false;
		  
		  try {
		  
		  String sql = "MERGE INTO cart USING DUAL ON (pid = ?) " +
		  " WHEN MATCHED THEN " + " UPDATE SET " + " C_QTY = C_QTY + ? " +
		  " WHEN NOT MATCHED THEN " +
		  " INSERT (MID,PID,C_QTY,C_DATE) VALUES (?,?,?,sysdate)";
		  
		  getPreparedStatement(sql); pstmt.setString(1, vo.getPid()); pstmt.setInt(2,
		  vo.getC_qty()); pstmt.setString(3, vo.getMid()); pstmt.setString(4,
		  vo.getPid()); pstmt.setInt(5, vo.getC_qty());
		  
		  int val = pstmt.executeUpdate(); if (val != 0) result = true;
		  
		  } catch (Exception e) { e.printStackTrace(); }
		  
		  return result; }
		 
      
      
	
      
}//cartDAO