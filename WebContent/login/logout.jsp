<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*"
    %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){	//로그인 상태이면..
		//세션에 추가된 객체를 삭제 --> session 초기화
		session.invalidate();
		response.sendRedirect("http://localhost:9000/sist_project_2/index.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/sist_project_2/errorPage.jsp");
	}
%>