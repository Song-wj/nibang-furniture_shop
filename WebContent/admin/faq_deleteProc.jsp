<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*"
    %>
<%
	String fid = request.getParameter("fid");
	nibangDAO dao = new nibangDAO();
	boolean result = dao.faqDelete(fid);
	
	if(result) {
		response.sendRedirect("faq_list.jsp");
	} else {
		System.out.println("@Error!");
	}
%>