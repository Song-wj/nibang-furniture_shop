<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import =" com.sist_project_2.dao.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String nid = request.getParameter("nid");
	noticeDAO dao = new noticeDAO();
	
	boolean result = dao.noticeDelete(nid);
	if(result){
		response.sendRedirect("notice_list.jsp");
	}else
		response.sendRedirect("errorPage.jsp");
%>%>
