<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.sist_project_2.vo.*"%>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
%>
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script>
	$(document).ready(function(){
		$("#faqWriter").click(function(){
			if($("#f_div").val() == "선택"){
				alert("구분을 선택해주세요.");
			}else if($("#f_title").val() == "") {
				alert("제목을 입력해주세요.");
			}else if($("#f_content").val() == "") {
				alert("내용을 입력해주세요.");
			}else {
				faqWriteForm.submit();
			}
			
		});
	});
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class="section1" id="faq_write_section1">
		<div class="admin"><h1>FAQ</h1></div>
			<form name="faqWriteForm" action="faq_writeProc.jsp" method="post"
				class="faq_write">
				<ul>
					<li><label>구분</label> 
						<select name="f_div" id="f_div">
							<option value="선택">선택</option>
							<option value="상품">상품</option>
							<option value="주문/결제/취소">주문/결제/취소</option>
							<option value="배송/시공">배송/시공</option>
							<option value="교환/반품">교환/반품</option>
							<option value="A/S">A/S</option>
							<option value="회원정보">회원정보</option>
							<option value="사이트이용">사이트이용</option>
						</select>
					</li>
					<li><label>제목</label> <input type="text" name="f_title"
						id="f_title"></li>
					<li><label>내용</label> <textarea rows="10" cols="50"
							name="f_content" class="f_content"></textarea></li>
					<li>
						<button type="button" id="faqWriter">등록</button>
						<button type="reset" >취소</button> <a
						href="notice_list.jsp">
							<button type="button">목록으로</button>
					</a>
					</li>
				</ul>
			</form>
	</section>
</body>
</html>
<%}else{ %>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 