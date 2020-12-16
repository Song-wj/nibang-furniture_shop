<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO" />
<jsp:setProperty property="*" name="vo" />

<%
	nibangDAO dao = new nibangDAO();
	boolean result = dao.getMemberUpdate(vo);
	
	if(result) {
		response.sendRedirect("index.jsp");
	} else {
		//에러페이지
		System.out.println("에러입니다.");
	}
	
%>
