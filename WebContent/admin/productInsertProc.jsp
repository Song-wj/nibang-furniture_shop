<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import =" com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
 <%@ page import ="com.oreilly.servlet.MultipartRequest"%> 
 <%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 

<%

	String  save_path = request.getServletContext().getRealPath("/upload");
	System.out.println(save_path);
	int max_size = 1024*1024*15;

	MultipartRequest multi = new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy());
	
	productVO vo = new productVO();
	vo.setPid(multi.getParameter("pid"));
	vo.setPname(multi.getParameter("pname"));
	vo.setPinfo(multi.getParameter("pinfo"));
	vo.setPkind(multi.getParameter("pkind"));
	vo.setPrice(Integer.parseInt(multi.getParameter("price")));
	vo.setColor(multi.getParameter("color"));
	vo.setImg1(multi.getOriginalFileName("img1"));
	vo.setSimg1(multi.getFilesystemName("img1"));
	vo.setImg2(multi.getOriginalFileName("img2"));
	vo.setSimg2(multi.getFilesystemName("img2"));	
	
	productDAO dao = new productDAO();
	boolean result = dao.productInsert(vo);
	
	if(result){
		response.sendRedirect("adminPage.jsp");
	}else
		response.sendRedirect("errorPage.jsp");
%>
