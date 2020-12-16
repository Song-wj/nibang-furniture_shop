<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sist_project_2.dao.nibangDAO" %>
    
 <%
 	request.setCharacterEncoding("utf-8");
 %>
 <jsp:useBean id="vo" class ="com.sist_project_2.vo.joinVO"/> 
 <jsp:setProperty name="vo" property="*"/>
 

<%
	nibangDAO dao = new nibangDAO();
	boolean result = dao.join(vo);
		
	if(result){
		response.sendRedirect("../login/login.jsp");
	}else{
		response.sendRedirect("errorPage.jsp");
	}

%>	

 
