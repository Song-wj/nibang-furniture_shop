<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import ="com.sist_project_2.vo.*, com.sist_project_2.dao.*"%>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO"/>
<jsp:setProperty name="vo" property="*" />

<%
	nibangDAO dao = new nibangDAO();
	SessionVO svo = dao.getLogin(vo);
	
	if(svo.getResult() != 0){
		session.setAttribute("svo", svo);
		
		response.sendRedirect("http://localhost:9000/sist_project_2/index.jsp?id="+vo.getEmail());
	}else {
		response.sendRedirect("loginFail.jsp");
		System.out.println(vo.getEmail());
	}
%>


