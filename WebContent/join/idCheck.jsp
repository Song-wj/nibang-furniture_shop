<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.sist_project_2.dao.*"%>

    <%
    	String id = request.getParameter("id");
    	nibangDAO dao = new nibangDAO();
    	int result = dao.idCheck(id);
    	
    	out.write(String.valueOf(result));
    %>