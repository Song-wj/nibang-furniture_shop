<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*"
    %>
    
<%
	String fid = request.getParameter("fid");
	faqDAO dao = new faqDAO();
	dao.nibangViews(fid);
	out.write(fid);
%>
