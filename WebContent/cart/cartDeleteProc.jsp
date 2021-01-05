<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.sist_project_2.vo.cartVO" />
<jsp:setProperty name="vo" property="*" />


<%
   String pid = request.getParameter("pid");
   String mid = request.getParameter("id");
   //System.out.println(parseCnt);
   
   cartDAO dao = new cartDAO();
   boolean result = dao.cartDelete(pid);
   
   if (result) {
      response.sendRedirect("cart.jsp?id="+mid);
   } else {
      response.sendRedirect("errorPage.jsp");
   }
%>