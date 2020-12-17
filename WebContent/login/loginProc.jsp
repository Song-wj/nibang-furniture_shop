<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*"%>

<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	nibangDAO dao = new nibangDAO();
	boolean result = dao.login(id, pass);
	if(result){
		response.sendRedirect("../index_login.jsp?id=" + id);
	}else
		response.sendRedirect("loginFail.jsp?id=" + id);
%>


