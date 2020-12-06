<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>회원가입</title>
<style>
	.section1 {

		border: 1px solid white;
	}	
	section.section1 div.join {
		width: 52%;
		margin: auto;
		text-align: center;
		margin-top: 13%;
		margin-bottom: 14%;
	}	
	section.section1 div.join h1 {
		padding-bottom: 50px;
		border-bottom: 1px solid lightgray;
		margin-bottom: 50px;
	}	
	section.section1 div.join form>ul>li {
		list-style-type: none;
	}	
	section.section1 div.join form>ul>li input[type="text"] {
		text-indent: 10px;
	}	
	section.section1 div.join form>ul>li:first-child input[type="text"] {
		width: 195px;
		height: 33px;
	}	
	section.section1 div.join form>ul>li:first-child>div, 
	section.section1 div.join form>ul>li:nth-child(5)>div{
		color: rgb(200, 10, 30);
		text-decoration: underline;
		font-size: 13px;
		font-weight: bold;
		margin: 10px 0 10px 50px;
		width:500px;
		text-align:right;
	}	
	section.section1 div.join form>ul>li:first-child>select {
		width: 100px;
		height: 32px;
	}	
	section.section1 div.join form>ul>li:nth-child(2)>input[type="password"],
	section.section1 div.join form>ul>li:nth-child(3)>input[type="text"] {
		width: 500px;
		height: 37px;
		margin-bottom: 10px;
	}	
	section.section1 div.join form>ul>li:nth-child(2)>div {
		text-align: right;
		font-size: 13px;
		font-weight: bold;
		margin: 10px 0 10px 50px;
		width:500px;
	}	
	section.section1 div.join form>ul>li:nth-child(4)>input[type="text"] {
		width: 142px;
		height: 39px;
		margin: 10px 0;
	}	
	section.section1 div.join form>ul>li:nth-child(5)>input[type="text"] {
		width: 164px;
		height: 39px;
		margin: 10px 0;
	}
	section.section1 div.join form>ul>li:nth-child(6)>input[type="text"] {
		width: 230px;
		height: 39px;
		margin-right: 20px;
	}	
	section.section1 div.join form>ul>li:nth-child(6)>input[type="text"]:first-child{		
		width: 420px;
		height: 39px;
		margin-right: 20px;
	}	
	section.section1 div.join form>ul>li:nth-child(6)>input[type="text"].a {
		width: 260px;
		margin-left: 25px;
	}	
	section.section1 div.join form>ul>li:nth-child(6)>input[type="text"]:last-child{
		width: 225px;
	}	
	section.section1 div.join form>ul>li:nth-child(6)>button {
		width: 60px;
		height: 30px;
	}	
	.btn_style {
		background-color: rgb(200, 10, 30);
		border: 1px solid rgb(200, 10, 30);
		width: 200px;
		height: 50px;
		margin-top: 35px;
		color: white;
		font-size: 15px;
	}
	</style>
	<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
	<script>
		$(document).ready(function(){
			var chk =/(?=.*\d{1,15})(?=.*[~`!@#$%\^&*()-+=]{1,15})(?=.*[a-zA-Z]{2,15}).{8,15}$/;
			$("button#join_btn").click(function (){
				if($("#email").val() == ""){
					alert("이메일을 입력해주세요");
				}else if($("#email").val() == ""){
					alert("이메일을 입력해주세요");
				}else if($("#email2").val() == ""){
					alert("이메일을 입력해주세요");
				}else if(!passCheck($("#pass") , chk )){
					return false;
				}else if($("#cpass").val() == ""){
					alert("비밀번호 확인을 입력해주세요");
				}else if($("#name").val() == ""){
					alert("이름을 입력해주세요");
				}else if($("#birth1").val() == "" || $("#birth2").val() == "" || $("#birth3").val() == ""){
					alert("생년 월일을 입력해주세요");
				}else if($("#gender:checked").length ==0){
					alert("성별을 체크해주세요");	
				}else if($("#ph1").val() == "" || $("#ph2").val() == "" || $("#ph3").val() == ""){
					alert("번호를 입력해주세요");
				}else if($("#addr2").val() == ""){
					alert("도로명을 입력해주세요");
				}else if($("#name").val() == ""){
					alert("상세주소를 입력해주세요");
				}	
			})
			
			$("#s_email").change(function(){
				if($("#s_email").val() != "직접입력"){
					$("#email2").val($(this).val());
				}else{
					$("#email2").val("");
					$("#email2").focus();
				}
			})
			
			$("#cpass").focusout(function(){
				if($("#pass").val() == $(this).val()){
					$("#msg").text("사용가능합니다").css("font-size","10px").css("color","blue").css("margin-left","430px");
					$("#name").focus();
				}else{
					$("#msg").text("비밀번호가 다릅니다.").css("font-size","10px").css("color","rgb(200, 10, 30)").css("margin-left","400px");
					$(this).val("");
					$("#cpass").focus();
					
				}
			})
			
			function passCheck(id ,chk){
				if(id.val()==""){
					alert("비밀번호를 입력해주세요");
					id.focus();
				}else
					if(chk.test(id.val())){
						return true;
					}else{
						alert("8~15자의 영문, 숫자, 특수문자 조합으로 구성해주세요");
						id.focus();
						return false;
						
					}
				
				
			}

			
		})
		
		
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
			document.join.addr1.value = zipNo;
			document.join.addr2.value = roadAddrPart1;
			document.join.addr3.value = addrDetail;
			
			
			
			
	}
	</script>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content1">

		<section class="section1">
			<div class="join">
				<h1>회원가입</h1>
				<form name="join" action="#" method="get" class="join_from">
					<ul>
						<li><input type="text" name="id" placeholder="아이디(이메일)" id="email">
							<input type="text" name="e-mail" id="email2">
							 <select id ="s_email">
								<option value="직접입력">직접입력
								<option value="naver.com">naver.com
								<option value="nate.com">nate.com
								<option value="daum.net">daum.net
								<option value="hanamil.net">hanamil.net
								<option value="gmail.com">gmail.com
								<option value="yahoo.co.kr">yahoo.co.kr
						</select>
							<div>중복확인</div></li>
						<li><input type="password" name="pass" placeholder="비밀번호" id="pass">
							<br> <input type="password" name="cpass" placeholder="비밀번호확인" id="cpass">
							<br>
							<span id="msg"></span>							
							<div>8~15자의 영문, 숫자, 특수문자 조합</div></li>
						<li><input type="text" name="name" placeholder="이름" id="name"></li>
						<li><input type="text" name="pass" placeholder="생년월일" id="birth1">
							<input type="text" name="pass" id="birth2">
							<input type="text" name="pass" id="birth3">
						    <input type="radio" name="gender" id ="gender">남 <input
							type="radio" name="gender" id="gedger">여</li>
						<li><input type="text" name="ph1" placeholder="전화번호" id="ph1">
							<input type="text" name="ph2" id="ph2"> 
							<input type="text" name="ph3" id="ph3">
							<div>중복확인</div></li>
						<li><input type="text" name="addr" placeholder="우편번호" id="addr1">
							<button type="button" class="btn_style" onClick="goPopup();" >찾기</button> <br>
						<br> <input type="text" name="addr2" placeholder="도로명주소"	class="a" id="addr2">
						 <input type="text" name="addr3" placeholder="상세주소" id="addr3"></li>
					</ul>

					<button type="button" class="btn_style" id="join_btn">회원가입</button>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>