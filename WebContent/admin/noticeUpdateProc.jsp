<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*"%>

 
    
  <%
 	request.setCharacterEncoding("utf-8");
 %>
 	<jsp:useBean id="vo" class="com.sist_project_2.vo.noticeVO"/>
 	<jsp:setProperty name ="vo" property="*"/>
 
 <%
 	System.out.println(vo.getNid());
 System.out.println(vo.getNtitle());
 System.out.println(vo.getNcontent());
 	noticeDAO dao = new noticeDAO();
 	boolean result = dao.updateNotice(vo);
 	
 	if(result){
 		response.sendRedirect("notice_list.jsp");
 	}
 %>