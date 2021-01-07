<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%	request.setCharacterEncoding("utf-8"); %>     
<jsp:useBean id="vo" class ="com.sist_project_2.vo.orderVO"/>
<jsp:setProperty name="vo" property="*"/>    
    
<%
<<<<<<< HEAD
	String oid = vo.getOid();
	
	
=======
	String oid = request.getParameter("oid");
	System.out.println("cart_order_form -> orderProc :: "+oid);
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda
	orderDAO dao = new orderDAO();
 	boolean result = dao.orderWrite(vo); 
	System.out.println(oid);
 	for(int i =1; i<10; i++){
		String pid = request.getParameter("pid"+i);
<<<<<<< HEAD
		
=======
		System.out.println("pid ::" + pid);
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda
		if(pid != null){
	     	dao.subWrite(oid,pid);		
		}
	}
		
	if(result){
<<<<<<< HEAD

		response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&oid="+oid+"&cnt="+vo.getPcnt()); 
		/* response.sendRedirect("orderComplete.jsp?id="+vo.getMid()+"&oid="+vo.getOid()); */
=======
		response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&cnt="+vo.getPcnt());
		//response.sendRedirect("orderComplete.jsp?id="+vo.getMid()+"&oid="+vo.getOid());
>>>>>>> 4128c82246f35e1d5b0f71c0edfadca38b330fda

	 }else{
		response.sendRedirect("errorPage.jsp");
	}   

%>	