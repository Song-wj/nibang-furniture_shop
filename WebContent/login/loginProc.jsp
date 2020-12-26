<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*, com.sist_project_2.vo.*"%>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO"/>
<jsp:setProperty name="vo" property="*" />
<%
	nibangDAO dao = new nibangDAO();
	
	//String id = request.getParameter("id");
	//String pass = request.getParameter("pass");
	SessionVO svo = dao.login(vo);

	if(svo.getResult() != 0){
		
		session.setAttribute("svo", svo);
		response.sendRedirect("../index.jsp?id=" + vo.getEmail());
	}else {
		//response.sendRedirect("loginFail.jsp?");
	}
%>


