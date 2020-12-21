<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%
	String sid = request.getParameter("sid");
	messageDAO dao = new messageDAO();
	messageVO vo = new messageVO();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>문의 삭제</title>
<style>
	form.inquiry_delete h3 {
		padding-top: 100px;
		text-align:center;
	}
	img.deleteimg {
		width:300px; 
		height:300px;
		margin-left: 480px;
	}
	div.btn_1-1_inquiry_delete{
		margin-left: 420px;
		margin-top: 30px;
		margin-bottom: 50px;
	}
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<form class="inquiry_delete">
					<h3>정말 삭제하시겠습니까?</h3>
					<img src="../images/delete.jpg" class="deleteimg">
					<div class="btn_1-1_inquiry_delete">
						<a href="1-1inquiryDeleteProc.jsp?sid=<%=vo.getSid()%>"><button type="button" class="btn_style">삭제완료</button></a>		
						<a href="1-1_inquiry.jsp"><button type="button" class="btn_style">이전페이지</button></a>							
					</div>							
				</form>				
			</div>
		</section>		
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>



