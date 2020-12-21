<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
<%@ page import ="com.oreilly.servlet.MultipartRequest"%> 
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 
 
 <%
	 String  save_path = request.getServletContext().getRealPath("/upload");
 	 int max_size = 1024*1024*15;
 	 
	MultipartRequest multi = new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy());
	
	noticeVO vo = new noticeVO();
	noticeDAO dao = new noticeDAO();
	boolean result = false;
	if(multi.getOriginalFileName("nfile")!=null){
		vo.setNid(multi.getParameter("nid"));
		vo.setNtitle(multi.getParameter("ntitle"));
		vo.setNcontent(multi.getParameter("ncontent"));
		vo.setNfile(multi.getOriginalFileName("nfile"));
		vo.setNsfile(multi.getFilesystemName("nfile"));
		
		result = dao.updateNotice(vo);
	}else{
		vo.setNid(multi.getParameter("nid"));
		vo.setNtitle(multi.getParameter("ntitle"));
		vo.setNcontent(multi.getParameter("ncontent"));
	
		result = dao.updateNotice1(vo);
	}
	if(result){
		response.sendRedirect("notice_list.jsp");
	}else
		response.sendRedirect("errorPage.jsp");
 %>