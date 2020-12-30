package com.sist_project_2.dao;

import com.sist_project_2.vo.cartVO;

public class cartDAO extends DBConn{
      /**
       * insertCart : cart µî·Ï
       */
      public boolean insertCart(cartVO vo) {
         boolean result = false;

         try {
            String sql = "insert into cart values('c_'||sqe_nibang_cart.nextval,?,?,1,sysdate)";
            
            getPreparedStatement(sql);
            pstmt.setString(1, vo.getMid());
            pstmt.setString(2, vo.getPid()); 
            //pstmt.setString(3, vo.getC_qty());
            
            int val = pstmt.executeUpdate();
            if (val != 0)
               result = true;

         } catch (Exception e) {
            e.printStackTrace();
         }

         return result;
      }
      
      
      
      
}//cartDAO