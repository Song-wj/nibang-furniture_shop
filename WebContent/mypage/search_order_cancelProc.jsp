<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%
	String oid = request.getParameter("oid");
	String mid = request.getParameter("mid");
	orderDAO dao = new orderDAO();
	boolean result = dao.orderCancel(oid ,mid);
	
	if(result){
		response.sendRedirect("order_delivery.jsp");
	}else{
		System.out.println("dd");
	}
%>    
