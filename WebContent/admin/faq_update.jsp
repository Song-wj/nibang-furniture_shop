<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"%>
<%
	String fid = request.getParameter("fid");

	faqDAO dao = new faqDAO();
	faqVO vo = dao.getFAQContent(fid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/sist_project_2/css/illum.css">
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
</style>
<body>
	<section class="section1">
		<jsp:include page="../sideMenuBarAdmin.jsp"/>
		<div class="content">
			<div>
				<h1>FAQ 수정</h1>
			</div>
			<form name="noticeUpdateForm" action="faq_updateProc.jsp"
				method="post">
				<input type="hidden" name="fid" value="<%=vo.getFid()%>">
				<ul>
					<li><label>구분</label> <select name="f_div" id="f_div">
							<option value="<%= vo.getF_div()%>"><%= vo.getF_div()%></option>
							<option value="선택">선택</option>
							<option value="상품">상품</option>
							<option value="주문/결제/취소">주문/결제/취소</option>
							<option value="배송/시공">배송/시공</option>
							<option value="교환/반품">교환/반품</option>
							<option value="A/S">A/S</option>
							<option value="회원정보">회원정보</option>
							<option value="사이트이용">사이트이용</option>
					</select></li>
					<li><label>제목</label> <input type="text" name="f_title"
						id="f_title" value="<%= vo.getF_title()%>"></li>
					<li><label>내용</label> <textarea rows="10" cols="50"
							name="f_content" class="f_content"><%= vo.getF_content() %></textarea></li>
					<li>
						<button type="submit">수정완료</button>
						<button type="reset">취소</button> 
						<a href="faq_content.jsp?fid=<%=fid%>"><button type="button">이전페이지</button></a>
						<a href="faq_list.jsp"><button type="button">목록으로</button></a>
					</li>
				</ul>
			</form>
		</div>
	</section>

</body>
</html>