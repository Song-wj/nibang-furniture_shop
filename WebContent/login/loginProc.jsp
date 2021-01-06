<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import ="com.sist_project_2.dao.*, com.sist_project_2.vo.*"%>
<jsp:useBean id="vo" class="com.sist_project_2.vo.joinVO"/>
<jsp:setProperty name="vo" property="*" />
<%
<<<<<<< HEAD
	
=======
>>>>>>> 98c5267139661311cbdd8fe0d1be6ca3d7b12911
	nibangDAO dao = new nibangDAO();
	SessionVO svo = dao.getLogin(vo);
	

	if(svo.getResult() != 0){
		
		session.setAttribute("svo", svo);
		response.sendRedirect("../index.jsp?id=" + vo.getEmail());
	}else {		
		response.sendRedirect("loginFail.jsp?id=" + vo.getEmail());
	}
%>
