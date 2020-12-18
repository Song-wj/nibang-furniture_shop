<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import =" com.sist_project_2.dao.*"%>
 
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="vo" class="com.sist_project_2.vo.productVO" />
	<jsp:setProperty property="*" name="vo"/>
<%
	productDAO dao = new productDAO();
	boolean result = dao.productInsert(vo);
	
	if(result){
		response.sendRedirect("adminPage.jsp");
	}else
		response.sendRedirect("errorPage.jsp");
%>
