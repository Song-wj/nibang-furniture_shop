package com.sist_project_2.dao;

import java.util.ArrayList;

import com.sist_project_2.vo.orderVO;


public class orderDAO extends DBConn{
   
   public boolean updateReviewChk(String oid , String pid) {
      boolean result = false;
      
      try {
         String sql = "update suborder set review_chk ='o' where pid=? and oid=?";
         getPreparedStatement(sql);
         pstmt.setString(1, pid);
         pstmt.setString(2, oid);
  
         int val = pstmt.executeUpdate();
         if(val != 0) result = true;
         
      }catch (Exception e) {
         e.printStackTrace();
      }
      
      return result;
   }
   
   public ArrayList<orderVO> getOrderReviewList(String mid) {
      ArrayList<orderVO> list = new ArrayList<>();
      
      try {
         String sql = "select o.oid,  p.simg1, p.pname, p.pinfo ,p.pid from (select o.oid, s.pid, o.mid, s.review_chk, order_chk ,rdate from suborder s ,nibangorder o where s.oid = o.oid) o , product p where o.pid=p.pid and review_chk='x' and order_chk ='o' and mid =? order by rdate desc";
         getPreparedStatement(sql);
         pstmt.setString(1, mid);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            orderVO vo = new orderVO(); 
            vo.setOid(rs.getString(1));
            vo.setSimg(rs.getString(2));
            vo.setPname(rs.getString(3));
            vo.setPinfo(rs.getString(4));
            vo.setPid(rs.getString(5));
            
            list.add(vo);
         }
         
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      return list;
   }
	
	
	
	 
   public ArrayList<orderVO> getOrderList(int period, String mid) {
		ArrayList<orderVO> list = new ArrayList<>();
		try {
			String str="";
			if(period ==0) {
				str = "order by rdate desc";
			}else {
				str = "and rdate>=sysdate-"+period+" order by rdate desc";
			}
			String sql = "select oid, pname,pcnt, price , rdate  from (select o.oid,mid, order_chk, s.pid, s.pcnt, to_char(rdate, 'yyyy/mm/dd') rdate from nibangorder o, suborder s where o.oid=s.oid) s, product p where s.pid=p.pid and order_chk= ? and mid=? "+str ;
			getPreparedStatement(sql);
			pstmt.setString(1, "o");
			pstmt.setString(2, mid);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				orderVO vo = new orderVO(); 
				vo.setOid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPcnt(Integer.parseInt(rs.getString(3)));
				vo.setPprice(rs.getInt(4));
				vo.setRdate(rs.getString(5));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	 
   public ArrayList<orderVO> getCancelList(int period, String mid) {
	      ArrayList<orderVO> list = new ArrayList<>();
	      
	      
	      try {
	    	  String str="";
				if(period ==0) {
					str = "order by rdate desc";
				}else {
					str = "and rdate>=sysdate-"+period+" order by rdate desc";
				}
	         String sql = "select oid, pname, to_char(price, '9,999,999'), rdate  from (select o.oid,mid, order_chk, s.pid, to_char(rdate, 'yyyy/mm/dd') rdate from nibangorder o, suborder s where o.oid=s.oid) s, product p where s.pid=p.pid and order_chk= ? and mid=? "+str ;
	         getPreparedStatement(sql);
	         pstmt.setString(1, "x");
	         pstmt.setString(2, mid);
	         rs = pstmt.executeQuery();
	         
	         while(rs.next()) {
	            orderVO vo = new orderVO(); 
	            vo.setOid(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setPrice(rs.getString(3));
				vo.setRdate(rs.getString(4));
	            
	            list.add(vo);
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return list;
	   }

   public boolean orderCancel(String oid , String mid) {
		 boolean result =false;
		 try {
			String sql = "update nibangorder set order_chk = ? , rdate= sysdate where oid=? and mid = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, "x");
			pstmt.setString(2, oid);
			pstmt.setString(3, mid);
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		 } catch (Exception e) {
			e.printStackTrace();
		 }
		   return result;
	 }
	   
   
  
		  
   
   public orderVO getOrder(String oid) {
	      orderVO vo = new orderVO(); 
	      
	      try {
	    	  String sql = "select o.oid, m.name, o.rname, o.raddrnum, o.raddr, m.hp, o.rph, p.simg1, p.pname, p.pinfo, p.color, p.price, o.pcnt, o.total  \r\n" + 
		         		"	   from nibangmember m, product p , ( select s.oid, s.pid , o.mid ,o.rname, o.raddrnum ,o.pcnt, o.total ,o.rph ,o.raddr\r\n" + 
		         		"                                         from  nibangorder o, suborder s" + 
		         		"                                          where o.oid = s.oid) o" + 
		         		"	   where o.mid = m.mid and o.pid = p.pid  and o.oid=?";
	         getPreparedStatement(sql);
	         pstmt.setString(1, oid);
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
         String sql = "insert into nibangorder values (?,?,?,?,?,?,?,?,?,?,?,sysdate,?)";
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
         pstmt.setString(11, vo.getReview_chk());
         pstmt.setString(12, vo.getOrder_chk());

         
         
         int val = pstmt.executeUpdate();
         
         if(val != 0) result = true;
         
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      return result;
   }
   
	
	  public ArrayList<orderVO> getPid(String oid) {
	  	  
		  ArrayList<orderVO> list = new ArrayList<>();
		  try { 
			  String sql = "select simg1 , pinfo , color, pname,price,pcnt from  product p , ( select s.pcnt ,s.pid ,s.oid from  nibangorder o, suborder s  where o.oid = s.oid) o where  o.pid =p.pid and oid=?" ;
	  getPreparedStatement(sql); pstmt.setString(1, oid);
	  
	  
	  
	  rs= pstmt.executeQuery();
	  
	  while(rs.next()){ 
		  orderVO vo = new orderVO(); 
		  vo.setSimg(rs.getString(1));
		  vo.setPinfo(rs.getString(2)); 
		  vo.setColor(rs.getString(3)); 
		  vo.setPname(rs.getString(4));
		  vo.setPrice(rs.getString(5)); 
		  vo.setPcnt(Integer.parseInt(rs.getString(6)));
		  
	 
	  list.add(vo); }
	  
	  } catch (Exception e) { e.printStackTrace(); }
	 
	  return list; }
	
   
		
   
   public boolean subWrite(String oid, String pid ,String cnt) {
	      boolean result = false;
	      
	      try {
	         String sql = "insert into suborder(oid, pid , pcnt) values (?,?,?)";
	         getPreparedStatement(sql);
	         pstmt.setString(1, oid);
	         pstmt.setString(2, pid);
	         pstmt.setString(3, cnt);
	         int val = pstmt.executeUpdate();
	         
	         if(val != 0) result = true;
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return result;
	   }
}