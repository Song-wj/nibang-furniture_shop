<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.net.*"%>

 <jsp:useBean  id="vo" class="com.sist_project_2.vo.joinVO"  />
 <jsp:setProperty property="*" name="vo"/>
 
 <%
 	
 	 nibangDAO dao = new nibangDAO();
 
 	 joinVO jvo= dao.findId(vo.getPh());
 	/*  String msg="없는 번호입니다."; */
 	 
 	 if(jvo.getEmail() != null){	
 		  String name = URLEncoder.encode(jvo.getName(),"utf-8");	  	
 		  response.sendRedirect("id_check.jsp?mid="+jvo.getEmail()+"&name="+name); 		 
 	 }else{
 	     String msg = URLEncoder.encode("없는 번호입니다.","utf-8");	  
 		 response.sendRedirect("find_id.jsp?msg="+msg);
 	 }
 %>
   