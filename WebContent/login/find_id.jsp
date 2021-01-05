<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.io.*"%>
<%
	
	String msg= request.getParameter("msg");



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
			if($("#name").val() == ""){
				alert("이름을 입력해주세요.");
				$("#email").focus();
			}else if($("#ph1").val() == "" || $("#ph2").val() == "" || $("#ph3").val() == ""){
				alert("휴대폰 번호를 입력해주세요.");
				$("#ph1").focus();
			}else {
				find_id_Form.submit();
			}
		});
		
		
	});
</script>
<style>
 div.content {
	border: 1px solid white;
}
section.section1 form.find_id_form input[type='text']{
	width:230px;
	margin-left:10px;
}

section.section1 div.login{
	height:410px;
}
section.section1 form.find_id_form li:nth-child(2) span{
	font-size:10px;
	display:block;
	color:rgb(200, 10, 30);
}
section.section1 form.find_id_form li:nth-child(2) #ph1{
	
	width:50px;
}
section.section1 form.find_id_form li:nth-child(2) input#ph2,
section.section1 form.find_id_form li:nth-child(2) input#ph3{
	width:60px;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>아이디 찾기</h3>
				<form name="find_id_Form" action="findIdProc.jsp" method="post" class="find_id_form">
					<ul>
						<li><label>이름 :&nbsp;</label><input type="text" name="name"  class="textfield" id="name"></li>

						<li><label>번호 :&nbsp;</label><input type="text" name="ph1"  class="textfield" id="ph1"> &nbsp;-
						<input type="text" name="ph2"  class="textfield" id="ph2">&nbsp; - <input type="text" name="ph3"  class="textfield" id="ph3">
						<%if(msg!= null) {%>
						<span id="msg"  style="font-size:13px;margin-left:10px;margin-top:10px;"><%= msg %></span>
						<%} %>
						</li>		
						<li>
							<button type="button" class="btn_style" id="btn_login">아이디 찾기</button>
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