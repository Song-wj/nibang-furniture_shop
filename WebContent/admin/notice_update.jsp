<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>

<%
	String nid = request.getParameter("nid");
noticeDAO dao = new noticeDAO();
noticeVO vo = dao.getContent(nid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/sist_project_2/css/illum.css">
<script src="http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
</head>
<style>
.section1 aside.sideMenuBar2 ul>li:first-child>a {
	font-size: 15px;
	color: rgb(144, 144, 144);
}

form ul li label {
	float: left;
	margin-right: 10px;
}

form ul li {
	margin-bottom: 15px;
	list-style: none;
}
form span.nfileName{
	display:inline-block;
	width:230px;
	margin-left:-177px;
	font-size:13px;
	background-color:white;
}
button#nu_btn{
	margin-left:500px;
}
</style>
<script>
	$(document).ready(function() {
		$("#nu_btn").click(function() {
			if ($("#ntitle").val() == "") {
				alert("제목을 입력해주세요");
				$("#ntitle").focus();
			} else if ($("#ncontent").val() == "") {
				alert("내용을 입력해주세요");
				$("#ncontent").focus();
			} else
				noticeUpdateForm.submit();
		})
		
		$("#nfile").change(function(){
			if(window.FileReader){
				var fileName= $(this)[0].files[0].name;
				$(".nfileName").text("").text(fileName);					
			}
		}) 
	})	
</script>
<body>
	<section class="section1">
		<aside class="sideMenuBar2">
			<nav>
				<ul>
					<li><a
						href="http://localhost:9000/sist_project_2/admin/adminPage.jsp">상품
							리스트</a></li>
					<li><a
						href="http://localhost:9000/sist_project_2/admin/product_insert.jsp">상품등록</a></li>
					<li><a
						href="http://localhost:9000/sist_project_2/admin/notice_list.jsp">공지사항</a></li>
					<li><a
						href="http://localhost:9000/sist_project_2/admin/faq_list.jsp">FAQ</a></li>
					<li><a
						href="http://localhost:9000/sist_project_2/admin/1-1inquiry_list.jsp">1:1문의</a></li>
				</ul>
			</nav>
		</aside>
		<div class="content">
			<div>
				<h1>공지사항 수정</h1>
			</div>
			<form name="noticeUpdateForm" action="noticeUpdateProc.jsp?nid=<%=nid%>" method="post" enctype="multipart/form-data">
				<ul>
					<li><label>제목</label> <input type="text" name="ntitle" value="<%=vo.getNtitle()%>"></li>
					<li><label>내용</label> <textarea rows="10" cols="50" name="ncontent"><%=vo.getNcontent()%></textarea></li>
					<li>
					<%if(vo.getNfile() != null){ %>
					<input type ="file" name="nfile" id="nfile"><span class="nfileName"><%= vo.getNfile() %></span>
					<%}else {%>
					<input type ="file" name="nfile" id="nfile"><span class="nfileName">선택된 파일 없음</span>
					<%} %>
					</li>
				</ul>
				<button type="button" id="nu_btn">수정</button>
				<button type="reset">취소</button>
			</form>
		</div>
	</section>
</body>
</html>