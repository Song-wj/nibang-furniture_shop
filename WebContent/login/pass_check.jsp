<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%

/* String key = (String)request.getAttribute("key");  */
String email = request.getParameter("email");
String key = request.getParameter("key");


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
			var chk =/(?=.*\d{1,15})(?=.*[~`!@#$%\^&*()-+=]{1,15})(?=.*[a-zA-Z]{2,15}).{8,15}$/;
			var checknum = 0;
			//id, pass 유효성 체크(validation check)
			if($("#key").val() == ""){
				alert("인증번호를 입력해주세요.");
				$("#key").focus();
			}else if(!passCheck($("#pass1") , chk)){
				return false;			
			}else if($("#pass2").val() == ""){
				alert("비밀번호확인을 입력해주세요.");
				$("#pass2").focus();
			}else {
				if($("#key").val()== "<%=key%>" && checknum ==0){
					changePassForm.submit();					
				 }else{
					alert("인증번호가 다릅니다.");	
				 }
				} 
			
			
			});
		
		
		$("#pass2").focusout(function(){
			if($("#pass1").val() != ""){
				if($("#pass1").val() == $(this).val()){
					$("#msg").text("사용가능합니다").css("font-size","10px").css("color","blue").css("margin-left","110px");
				}else{
					$("#msg").text("비밀번호가 다릅니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","100px");
					$(this).val("");
					$("#pass1").focus();
			 		 			
				}
			}	
		});
	

	 	$("#pass1").change(function (){
	 		if( $("#pass2").val() !="" ){	 			
				if($("#pass1").val() != $("#cpass2").val()){
					$("#msg").text("비밀번호가 다릅니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","100px");
					$("#pass2").focus();
					checknum =1;
				}
			
	 	}
	 	}) ;
	 	
	 	function passCheck(id ,chk){
			if(id.val()==""){
				alert("비밀번호를 입력해주세요");
				id.focus();
				return false;
			}else
				if(chk.test(id.val())){
					return true;
				}else{
					alert("8~15자의 영문, 숫자, 특수문자 조합으로 구성해주세요");
					id.focus();
					return false;						
				}
			
			
		}
		
	});
</script>
<style>
 div.content {
	border: 1px solid white;
}

</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>비밀번호 변경</h3>
				<form name="changePassForm" action="login/passChangeProc.jsp?email=<%= email %>" method="post" class="loginform">
					<ul>
						<li><input type="text" name="key" placeholder="인증번호" class="textfield" id="key">		
						</li>
						<li><input type="password" name="pass" placeholder="새 비밀번호" class="textfield" id="pass1">
						</li>
						<li><input type="password" name="pass2" placeholder="비밀번호 확인" class="textfield" id="pass2">		
							<span id="msg" style="display:block;"></span>
						</li>
						
						<li>
							<button type="button" class="btn_style" id="btn_login">변경하기</button>
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