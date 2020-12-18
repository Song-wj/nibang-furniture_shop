<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.faqVO" />
<jsp:setProperty name="vo" property="*" />

<%
	nibangDAO dao = new nibangDAO();
	boolean result = dao.insertFAQ(vo);

	if(result) {
		response.sendRedirect("faq_list.jsp");
	} else {
		System.out.println("@Error!");
	}
%> 
