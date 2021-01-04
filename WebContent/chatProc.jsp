<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.chatVO"/>
<jsp:setProperty name="vo" property="*"/>
<%
	//String mid = request.getParameter("id");
	chatDAO dao = new chatDAO();
	boolean result = dao.insertChat(vo);
	out.write(String.valueOf(result));
%>
