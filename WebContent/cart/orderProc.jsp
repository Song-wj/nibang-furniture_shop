<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%	request.setCharacterEncoding("utf-8"); %>     
<jsp:useBean id="vo" class ="com.sist_project_2.vo.orderVO"/>
<jsp:setProperty name="vo" property="*"/>    
    
<%

	String oid = vo.getOid();
	String ppid= vo.getPid();
	String pcnt = String.valueOf(vo.getPcnt());
	
	orderDAO dao = new orderDAO();
 	boolean result = dao.orderWrite(vo); 
	System.out.println("1---------"+oid);
	
 	if(ppid != null ){ 
 		dao.subWrite(oid,ppid,pcnt);	
 	}
	
	for(int i =1; i<10; i++){
		String cpid = request.getParameter("pid"+i);
		String cnt = request.getParameter("pcnt"+i);
		
		if(cpid != null ){
			System.out.println(cpid);
			System.out.println(cnt);
	     	dao.subWrite(oid,cpid,cnt);		
		}
	}
		
	if(result){
		
		response.sendRedirect("creditPayment.jsp?id="+vo.getMid()+"&oid="+oid+"&cnt="+vo.getPcnt()); 
		//response.sendRedirect("orderComplete.jsp?id="+vo.getMid()+"&oid="+vo.getOid());		
	 }else{
		response.sendRedirect("errorPage.jsp");
	}   

%>	