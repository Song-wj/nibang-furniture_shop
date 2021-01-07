<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%
	String oid = request.getParameter("oid");
	String pid = request.getParameter("pid");
	
	orderDAO dao = new orderDAO();
	boolean result = dao.updateReviewChk(oid,pid);
	out.write(String.valueOf(result));
%>
