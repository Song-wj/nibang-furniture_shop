<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*"%>

    <%
    	String nid = request.getParameter("nid");
    	noticeDAO dao = new noticeDAO();
    	/* dao.updateView(nid); */
    	int result = dao.getView(nid);
    	out.write(String.valueOf(result));
    %>