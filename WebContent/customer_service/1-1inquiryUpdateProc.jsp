<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import ="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>    

<%
    	String save_path = request.getServletContext().getRealPath("/upload"); 

    	int max_size = 1024*1024*100;

    	MultipartRequest multi 
    		= new MultipartRequest(request,save_path,max_size,
    		"utf-8", new DefaultFileRenamePolicy()); 

    	//4. VO 객체 생성
    	//4-1. 선택된 파일이 있는 경우(새로운 파일 선택)
    	messageVO vo = new messageVO();
    	messageDAO dao = new messageDAO();
    	boolean result = false;
    	
    	if(multi.getOriginalFileName("m_file") != null){
    		vo.setSid(multi.getParameter("sid"));
    		vo.setM_div(multi.getParameter("m_div"));
    		vo.setM_title(multi.getParameter("m_title"));
    		vo.setM_content(multi.getParameter("m_content"));
    		vo.setM_file(multi.getOriginalFileName("m_file"));
    		vo.setM_sfile(multi.getFilesystemName("m_file"));
    		
    		//DB연동 --> 새로운 파일 있는 경우
    		result = dao.getUpdate(vo);
    	}else{
    		vo.setSid(multi.getParameter("sid"));
    		vo.setM_div(multi.getParameter("m_div"));
    		vo.setM_title(multi.getParameter("m_title"));
    		vo.setM_content(multi.getParameter("m_content"));
    		
    		//DB연동 ---> 새로운 파일 없음 : 기존 파일 유지!!
    		System.out.println("-----------> 파일선택 X, 기존 파일 유지");
    		result = dao.getUpdateNofile(vo);
    	}		
    	
    	if(result){
    		response.sendRedirect("1-1_inquiry.jsp");
    	}else{
    		System.out.println("error");
    	}
    %> 
