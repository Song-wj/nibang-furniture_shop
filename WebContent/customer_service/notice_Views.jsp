<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
<%
	String nid = request.getParameter("nid");
	noticeDAO dao = new noticeDAO();
	dao.updateView(nid);
	out.write(nid);
%>