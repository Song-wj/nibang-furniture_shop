<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*"%>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO"/>
<jsp:setProperty name="vo" property="*" />
<%
	
	nibangDAO dao = new nibangDAO();
	boolean result =dao.changePass(vo.getEmail(),vo.getPass());
	
	if(result){
		response.sendRedirect("login.jsp");
	}

%>