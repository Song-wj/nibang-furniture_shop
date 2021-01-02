package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.cartVO;

public class cartDAO extends DBConn{
      /**
       * insertCart : cart µî·Ï
       */
      public boolean insertCart(cartVO vo) {
         boolean result = false;
         
         
           try {
              
           String sql = "insert into cart values(?,?,?,sysdate)";
           
           getPreparedStatement(sql); 
           //pstmt.setString(1, vo.getMid());
           pstmt.setString(1, "dd@gmail.com");
           pstmt.setString(2, vo.getPid()); 
           pstmt.setInt(3, vo.getC_qty());
           
           int val = pstmt.executeUpdate(); if (val != 0) result = true;
           
           } catch (Exception e) { e.printStackTrace(); }
          

         return result;
      }
      
      /**
       * getCart
       */
      public ArrayList<cartVO> getCart() {
        ArrayList<cartVO>  list = new ArrayList<cartVO>(); 
        
      
        try {
           
           String sql = "select p.pname, p.pinfo, p.price, p.color, p.simg1, c.c_qty, c.c_date "
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
              list.add(vo);
           }
        
        } catch (Exception e) { e.printStackTrace(); }
       
        
        return list;
     }
      
      
      
}//cartDAO