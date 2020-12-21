<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*"
    %>
<%
	String sid = request.getParameter("sid");
	messageDAO dao = new messageDAO();
	boolean result = dao.getDelete(sid);
	
	if(result){
		response.sendRedirect("../mypage/1-1_inquiry.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>    
