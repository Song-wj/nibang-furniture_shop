<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.sist_project_2.dao.*"%>
<%
	nibangDAO dao = new nibangDAO();

%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>회원가입</title>
<style>
 	.section1 {
		border: 1px solid white;
	}	
	
	</style>
	<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
	<script>
		$(document).ready(function(){
			var chk =/(?=.*\d{1,15})(?=.*[~`!@#$%\^&*()-+=]{1,15})(?=.*[a-zA-Z]{2,15}).{8,15}$/;
			var checknum = 0;
			var idchknum = 0;
			$("button#join_btn").click(function (){
				if($("#email").val() == ""){
					alert("이메일을 입력해주세요");
					$("#email").focus();
				}else if($("#email2").val() == ""){
					alert("이메일을 입력해주세요");
					$("#email2").focus();
				}else if(!passCheck($("#pass") , chk )){
					return false;
				}else if($("#cpass").val() == ""){
					alert("비밀번호 확인을 입력해주세요");
				}else if($("#name").val() == ""){
					alert("이름을 입력해주세요");
					$("#name").focus();
				}else if(!birthCheck($("#birth1").attr("name"))){
					return false;
				}else if(!birthCheck($("#birth2").attr("name"))){
					return false;
				}else if(!birthCheck($("#birth3").attr("name"))){	
					return false;	
				}else if($("#gender:checked").length ==0){
					alert("성별을 체크해주세요");
					$("#gender").focus();
				}else if(!phoneCheck()){
					return false;
				}else if($("#addr_num").val() == ""){
					alert("우편번호를 입력해주세요");
					$("#addr_num").focus();
				}else if($("#addr2").val() == ""){
					alert("주소을 입력해주세요");
					$("#addr2").focus();
				}else if($("#addr3").val() == ""){
					alert("상세주소을 입력해주세요");
					$("#addr3").focus();	
				}else{														
						if(idchknum ==0){	
							alert("이메일 중복체크를 해주세요");
						}else{
							if(checknum ==0){							
								joinForm.submit();			
							}																	
						}	
				}
					
			});
			
			$("#s_email").change(function(){
				if($("#s_email").val() != "직접입력"){
					$("#email2").val($(this).val());
				}else{
					$("#email2").val("");
					$("#email2").focus();
				}
			});
			
			$("#cpass").focusout(function(){
				if($("#pass").val() != ""){
					if($("#pass").val() == $(this).val()){
						$("#msg").text("사용가능합니다").css("font-size","10px").css("color","blue").css("margin-left","430px");
						$("#name").focus();
					}else{
						$("#msg").text("비밀번호가 다릅니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","400px");
						$(this).val("");
						$("#pass").focus();
				 		 			
					}
				}	
			});
		
	
		 	$("#pass").change(function (){
		 		if( $("#cpass").val() !="" ){	 			
					if($("#pass").val() != $("#cpass").val()){
						$("#msg").text("비밀번호가 다릅니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","400px");
						$("#cpass").focus();
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

			function birthCheck(birth){
				var today = new Date();
				var yearNow = today.getFullYear()
				if($("#birth1").attr("name") == birth){
					var key = $("#birth1").val();
					if(key==""){
						alert("생년 입력해주세요");
						return false;
					}else{
						if(key>yearNow || key<1940){
							alert("생년를 다시입력해주세요");
							$("#birth1").focus();
						}else
							return true;
					}
				
				}else if($("#birth2").attr("name") == birth){
					var key = $("#birth2").val();
					if(key==""){
						alert("생월을 입력해주세요");
						return false;
					}else{
						if(key>12 || key<01){
							alert("생월을 다시입력해주세요");
							$("#birth2").focus();
							return false;
						}else
							return true;
					}
				}else {
					var key = $("#birth3").val();
					if(key==""){
						alert("생일을 입력해주세요");
						return false;
					}else{
						if(key>31 || key<01){
							alert("생일을 다시입력해주세요");
							$("#birth3").focus();
							return false;
						}else
							return true;
					}
				}
			};
			
			function phoneCheck(){
				var a = $("#ph1").val();
				var b = $("#ph2").val();
				var c = $("#ph3").val();
				var ph = a + "-" + b + "-" +c;
				var phrule = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
				if(a =="" ){
					alert("휴대변호를 입력해주세요");
					$("#ph1").focus();
					return false;
				}else if(b =="" ){
					alert("휴대변호를 입력해주세요");
					$("#ph2").focus();
					return false;
				}else if(c =="" ){
					alert("휴대변호를 입력해주세요");
					$("#ph3").focus();
					return false;	
				}else
					if(phrule.test(ph)){
						return true;
					}else{
						alert("휴대번호를 다시 입력해주세요");
						$("#ph1").val("");
						$("#ph2").val("");
						$("#ph3").val("");
						phone.focus();
						return false;						
					}
			
				
			}
			$("#idCheck").click(function (){
				var a=$("#email").val();
				var b=$("#email2").val();
				var id = a+b;
				if(a == "" || b ==""){
					alert("이메일을 입력해주세요");
				}else{ 
					$.ajax({									
					url:"idCheck.jsp?id="+id,
					success:function(data){
						
						if(data == 0){
							$("#chkmsg").text("이미 사용중인 아이디입니다.").css("color","red").css("font-size","12px").css("margin-left","350px");
							$("#email").focus();
						}else{
							$("#chkmsg").text("사용가능한 아이디입니다.").css("color","blue").css("font-size","12px").css("margin-left","360px");
							idchknum =1;
						}
						
					}					
				})
				
			    }
				
			})
			
			
			
		
		});
			

		
		
		function goPopup(){
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("../addr/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}
		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			/* document.form.roadFullAddr.value = roadFullAddr; */
			document.joinForm.addr1.value = zipNo;
			document.joinForm.addr2.value = roadAddrPart1;
			document.joinForm.addr3.value = addrDetail;
			
			document.getElementById("addr1").style.fontSize = "15px";
		    document.getElementById("addr2").style.fontSize = "12px";
			document.getElementById("addr3").style.fontSize = "12px";
		
		}

			

	</script>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content1">

		<section class="section1">
			<div class="join">
				<h1>회원가입</h1>
				<form name="joinForm" action="joinProc.jsp" method="get" class="join_from">
					<ul>
						<li><input type="text" name="email1" placeholder="아이디(이메일)" id="email">
							<input type="text" name="email2" id="email2">
							 <select id ="s_email">
								<option value="직접입력">직접입력
								<option value="@naver.com">naver.com
								<option value="@nate.com">nate.com
								<option value="@daum.net">daum.net
								<option value="@hanamil.net">hanamil.net
								<option value="@gmail.com">gmail.com
								<option value="@yahoo.co.kr">yahoo.co.kr
						</select>
							<div ><button type="button" id="idCheck">중복확인</button></div>
							<div id="chkmsg"></div></li>
						<li><input type="password" name="pass" placeholder="비밀번호" id="pass">
							<br> <input type="password" name="cpass" placeholder="비밀번호확인" id="cpass">
							<br>
							<span id="msg"></span>							
							<div>8~15자의 영문, 숫자, 특수문자 조합</div></li>
						<li><input type="text" name="name" placeholder="이름" id="name"></li>
						<li><input type="text" name="birth1" placeholder="생년월일" id="birth1">
							<input type="text" name="birth2" id="birth2">
							<input type="text" name="birth3" id="birth3">
						    <input type="radio" name="gender" id ="gender" value ="남">남 <input
							type="radio" name="gender" id="gender" value ="여">여</li>
						<li><input type="text" name="ph1" placeholder="전화번호" id="ph1">
							<input type="text" name="ph2" id="ph2"> 
							<input type="text" name="ph3" id="ph3">
							<div ><a href="#" id=pchk>중복확인</a></div></li>
						<li><input type="text" name="addr_num" placeholder="우편번호" id="addr1">
							<button type="button" class="btn_style" onClick="goPopup();" >찾기</button> <br>
						<br> <input type="text" name="addr2" placeholder="도로명주소"	class="a" id="addr2">
						 <input type="text" name="addr3" placeholder="상세주소" id="addr3"></li>
					</ul>

					<button type="button" class="btn_style" id="join_btn">회원가입</button>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>