<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    	String sid = request.getParameter("sid");
    	String acontent = request.getParameter("acontent");
    	messageAnswerDAO dao = new messageAnswerDAO();
    	boolean result = dao.updateAnswer(sid,acontent); 
    	
    	if(result){
    		response.sendRedirect("1-1inquiry_content.jsp?sid="+sid);
    	}
    %>
