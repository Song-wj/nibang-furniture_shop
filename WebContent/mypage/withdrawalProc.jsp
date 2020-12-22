<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.withdrawalVO" />
<jsp:setProperty name="vo" property="*"/>
    
<%
	String mid = request.getParameter("id");
	withdrawalDAO dao = new withdrawalDAO();
	dao.withdrawalReason(vo);
	boolean result = dao.withdrawal(mid);
	
	if(result) {
		response.sendRedirect("../index.jsp");
	} else {
		response.sendRedirect("../errorPage.jsp");
		System.out.println("Error! , " + mid);
		
	}
%>
