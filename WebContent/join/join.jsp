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
<title>Insert title here</title>
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
	section.section1 div.join form>ul>li:nth-child(2)>input[type="text"],
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
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content1">

		<section class="section1">
			<div class="join">
				<h1>회원가입</h1>
				<form name="join" action="#" method="get" class="join_from">
					<ul>
						<li><input type="text" name="id" placeholder="아이디(이메일)">
							<input type="text" name="e-mail"> <select>
								<option value="직접입력">직접입력
								<option value="naver.com">naver.com
								<option value="nate.com">nate.com
								<option value="daum.net">daum.net
								<option value="hanamil.net">hanamil.net
								<option value="gmail.com">gmail.com
								<option value="yahoo.co.kr">yahoo.co.kr
						</select>
							<div>중복확인</div></li>
						<li><input type="text" name="pass" placeholder="비밀번호">
							<br> <input type="text" name="cpass" placeholder="비밀번호확인">
							<br>
							<div>8~15자의 영문, 숫자, 특수문자 조합</div></li>
						<li><input type="text" name="name" placeholder="이름"></li>
						<li><input type="text" name="pass" placeholder="생년월일">
							<input type="text" name="pass"> <input type="text"
							name="pass"> <input type="radio" name="sex">남 <input
							type="radio" name="sex">여</li>
						<li><input type="text" name="ph1" placeholder="전화번호">
							<input type="text" name="ph2"> <input type="text"
							name="ph3">
							<div>중복확인</div></li>
						<li><input type="text" name="addr" placeholder="우편번호">
							<button type="button" class="btn_style">찾기</button> <br>
						<br> <input type="text" name="addr2" placeholder="도로명주소"
							class="a"> <input type="text" name="addr3"
							placeholder="상세주소"></li>
					</ul>

					<button type="button" class="btn_style">회원가입</button>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>