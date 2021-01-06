<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO" />
<jsp:setProperty property="*" name="vo" />

<%
	String sid = request.getParameter("sid");
	messageAnswerDAO dao = new messageAnswerDAO();
	String answer = dao.getAnswer(sid);
	out.write(answer);
	
	
%>
