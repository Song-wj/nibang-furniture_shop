<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.io.*"%>
<%
	String msg = (String)request.getAttribute("msg");



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(document).ready(function(){
		
		
		$("button#btn_login").click(function(){
			//id, pass 유효성 체크(validation check)
			if($("#email").val() == ""){
				alert("아이디를 입력해주세요.");
				$("#email").focus();
				return false;
			}else if($("#name").val() == ""){
				alert("이름을 입력해주세요.");
				$("#name").focus();
				return false;
			}else {
				find_pass_Form.submit();
			}
		});
		
		
	});
</script>
<style>
 div.content {
	border: 1px solid white;
}
section.section1 form.find_pass_form input[type='text']{
	width:300px;
	margin-left:10px;
}
section.section1 form.find_pass_form li:first-child label{
	margin-left:-17px;
}

section.section1 div.login{
	height:410px;
}
section.section1 form.find_pass_form li:nth-child(2) span{
	font-size:10px;
	display:block;
	color:rgb(200, 10, 30);
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>비밀번호 찾기</h3>
				<form name="find_pass_Form" action="http://localhost:9000/sist_project_2/LoginServlet" method="post" class="find_pass_form">
					<ul>
						<li><label>아이디 : </label><input type="text" name="email"  class="textfield" id="email">
						</li>
						<li><label>이름 : </label><input type="text" name="name"  class="textfield" id="name">
							<%if(msg !=null) {%>
							<span ><%= msg %></span>
							<% }%>		
						</li>
					
						<li>
							<button type="button" class="btn_style" id="btn_login">비밀번호 찾기</button>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>