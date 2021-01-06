<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import ="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>    

<%		
		String mid = request.getParameter("id");
    	String save_path = request.getServletContext().getRealPath("/upload"); 
    	
		int max_size = 1024*1024*100;

    	MultipartRequest multi 
    		= new MultipartRequest(request,save_path,max_size,
    		"utf-8", new DefaultFileRenamePolicy()); 

    	//4. VO 객체 생성
    	//4-1. 선택된 파일이 있는 경우(새로운 파일 선택)
    	reviewVO vo = new reviewVO();
    	reviewDAO dao = new reviewDAO();
    	boolean result = false;
    	
    	if(multi.getOriginalFileName("r_file") != null){
    		
    		vo.setRid(multi.getParameter("rid"));
    		vo.setR_title(multi.getParameter("r_title"));
    		vo.setR_content(multi.getParameter("r_content"));
    		vo.setR_satis(multi.getParameter("r_satis"));
    		vo.setR_file(multi.getOriginalFileName("r_file"));
    		vo.setR_sfile(multi.getFilesystemName("r_file"));
    		vo.setMid(multi.getParameter("id"));
    		
    		//DB연동 --> 새로운 파일 있는 경우
    		result = dao.getUpdate(vo);
    	}else{
    		vo.setRid(multi.getParameter("rid"));
    		vo.setR_title(multi.getParameter("r_title"));
    		vo.setR_content(multi.getParameter("r_content"));
    		vo.setR_satis(multi.getParameter("r_satis"));
    		vo.setMid(multi.getParameter("id"));
    		
    		
    		//DB연동 ---> 새로운 파일 없음 : 기존 파일 유지!!
    		System.out.println("-----------> 파일선택 X, 기존 파일 유지");
    		result = dao.getUpdateNofile(vo);
    	}		
    	
    	if(result){
    		response.sendRedirect("myReview.jsp?id="+vo.getMid());
    	}else{
    		System.out.println("error");
    	}
    %> 
