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

	//4. VO 객체 생성
	messageVO vo = new messageVO();
	vo.setMid(multi.getParameter("mid"));
	vo.setM_div(multi.getParameter("m_div"));
	vo.setM_title(multi.getParameter("m_title"));
	vo.setM_content(multi.getParameter("m_content"));
	vo.setM_file(multi.getOriginalFileName("m_file"));
	vo.setM_sfile(multi.getFilesystemName("m_file"));
	
	//5. DB연동
	messageDAO dao = new messageDAO();
	boolean result = dao.getMessageInsert(vo);
	
	if(result){
		response.sendRedirect("../mypage/1-1_inquiry.jsp?sid="+ vo.getSid());
	
	}else{
		System.out.println("error");
	}
%>   