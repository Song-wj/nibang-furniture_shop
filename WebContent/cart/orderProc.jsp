<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%	request.setCharacterEncoding("utf-8"); %>     
<jsp:useBean id="vo" class ="com.sist_project_2.vo.orderVO"/>
<jsp:setProperty name="vo" property="*"/>    
    
<%
	String oid = request.getParameter("oid");
	
	
	orderDAO dao = new orderDAO();
 	boolean result = dao.orderWrite(vo); 
	
 	for(int i =1; i<10; i++){
		String pid = request.getParameter("pid"+i);
		System.out.println(pid);
		if(pid != null){
	     	dao.subWrite(oid,pid);		
		}
	}
	
		
	if(result){

		response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&pid="+vo.getPid()+"&cnt="+vo.getPcnt());
		//response.sendRedirect("orderComplete.jsp?id="+vo.getMid()+"&oid="+vo.getOid());

	}else{
		response.sendRedirect("errorPage.jsp");
	}  

%>	