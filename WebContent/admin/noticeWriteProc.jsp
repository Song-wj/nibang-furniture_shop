<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
<%@ page import ="com.oreilly.servlet.MultipartRequest"%> 
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 

<%

   String  save_path = request.getServletContext().getRealPath("/upload");
   System.out.println(save_path);
   int max_size = 1024*1024*150;

   MultipartRequest multi = new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy());
   
   noticeVO vo = new noticeVO();
   vo.setNtitle(multi.getParameter("ntitle"));
   vo.setNcontent(multi.getParameter("ncontent"));
   vo.setNfile(multi.getOriginalFileName("nfile"));
   vo.setNsfile(multi.getFilesystemName("nfile"));
   noticeDAO dao = new noticeDAO();
   boolean result = dao.insertNotice(vo);
   
   if(result){
      response.sendRedirect("notice_list.jsp");
   }else
      response.sendRedirect("errorPage.jsp");
%>
