<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
 	String nid = request.getParameter("nid");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>

img{
	width:200px;
	height:200px;
}
div.content button.notice_del{
	margin-left:300px;
}

</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class ="section1">
			   <div class="content">
					<div class="admin"><h1>공지사항 삭제</h1></div>
						<img src ="../images/delete.jpg">
		  				<div>삭제하시겠습니까?</div>
		  				<a href="noticeDeleteProc.jsp?nid=<%=nid %>"><button type="button" class="notice_del">삭제</button></a>
		  				<button type ="button">목록으로</button>
		  		</div>
	</section>
</body>
</html>