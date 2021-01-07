<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
	String save_path = request.getServletContext().getRealPath("/upload"); 
	int max_size = 1024*1024*100;
	MultipartRequest multi 
		= new MultipartRequest(request,save_path,max_size,"utf-8", new DefaultFileRenamePolicy()); 
	
	reviewVO vo = new reviewVO();
	vo.setMid(multi.getParameter("id"));
	vo.setPid(multi.getParameter("pid"));
	vo.setOid(multi.getParameter("oid"));
	vo.setR_title(multi.getParameter("r_title"));
	vo.setR_content(multi.getParameter("r_content"));
	vo.setR_satis(multi.getParameter("r_satis"));	
	vo.setR_file(multi.getOriginalFileName("r_file"));
	vo.setR_sfile(multi.getFilesystemName("r_file"));
	vo.setR_satis(multi.getParameter("r_satis"));	
	
	
	//5. DB연동
	reviewDAO dao = new reviewDAO();
	boolean result = dao.getreviewInsert(vo);
	
	if(result){
		
		response.sendRedirect("myReview.jsp?id="+vo.getMid());
		
	
	}else{
		System.out.println("error");
	}
%>   