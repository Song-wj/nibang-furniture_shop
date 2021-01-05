<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.cartVO" />
<jsp:setProperty name="vo" property="*" />


<%
	String mid = request.getParameter("id");
	String pidListString = request.getParameter("pidList");
	String[] pidList = pidListString.split(","); 
     
   cartDAO dao = new cartDAO();
   boolean result = dao.cartCheckedDelete(pidList);
   
  if (result) {
      response.sendRedirect("cart.jsp?id="+mid);
   } else {
      response.sendRedirect("errorPage.jsp");
   } 
%>