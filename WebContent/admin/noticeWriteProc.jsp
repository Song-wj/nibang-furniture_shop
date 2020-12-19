<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*"%>

 <%
 	request.setCharacterEncoding("utf-8");
 %>
 	<jsp:useBean id="vo" class="com.sist_project_2.vo.noticeVO"/>
 	<jsp:setProperty name ="vo" property="*"/>
 
 <%
 	noticeDAO dao = new noticeDAO();
 	boolean result = dao.insertNotice(vo);
 
 	if(result){
 		response.sendRedirect("notice_list.jsp");
 	}
 %>