<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.sist_project_2.vo.*"%>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
	String fid = request.getParameter("fid"); 
%>
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
img {
	width: 200px;
	height: 200px;
}
div.content button.faq_del {
	margin-top: 50px;
	margin-left: 500px;
}
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class="section1">
		<div class="content">
			<div class="admin"><h1>FAQ 삭제</h1></div>
			<img src="../images/delete.jpg" style="margin-left:530px;">
			<div style="margin-left:560px;">삭제하시겠습니까?</div>
			<a href="faq_deleteProc.jsp?fid=<%=fid%>"><button type="button" class="faq_del">삭제</button></a>
			<a href="faq_content.jsp?fid=<%=fid%>"><button type="button">이전페이지</button></a>
			<a href="faq_list.jsp"><button type="button">목록으로</button></a>
		</div>
	</section>
</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 