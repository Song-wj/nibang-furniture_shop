<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>

 <jsp:useBean  id="vo" class="com.sist_project_2.vo.joinVO"  />
 <jsp:setProperty property="*" name="vo"/>
 
 <%
 	 request.setCharacterEncoding("utf-8");
 	 nibangDAO dao = new nibangDAO();
 
 	 joinVO jvo= dao.findId(vo.getPh());
 	 String msg="없는 번호입니다.";
 	 
 	 if(jvo.getEmail() != null){
		
 		 response.sendRedirect("id_check.jsp?mid="+jvo.getEmail()+"&name="+jvo.getName()); 		 
 	 }else{
 		 response.sendRedirect("find_id.jsp?msg="+msg);
 	 }
 %>
   