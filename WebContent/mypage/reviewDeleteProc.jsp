<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%	
	String mid = request.getParameter("id");
	String rid = request.getParameter("rid");
	reviewDAO dao = new reviewDAO();
	reviewVO vo = new reviewVO();
		
	boolean result = dao.getDelete(rid);
	out.write(String.valueOf(result));
%>    
