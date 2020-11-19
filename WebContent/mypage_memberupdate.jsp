<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 - 수정</title>
</head>
<style>
	.content{
		width:70%;		
		padding: 5%;
	}
	.content .sideMenuBar {
		margin-top: 15%;
		border: 1px solid rgb(144, 144, 144);
		display: inline-block;
		width: 160px;
		height: 280px;
		padding: 30px 10px 20px 10px;
		float: left;
	}
	.sideMenuBar ul {
		list-style-type: none;
		padding-left: 0;
	}
	.sideMenuBar ul li {
		font-size: 15px;
	}
	.sideMenuBar ul li:first-child {
		padding: 8px 0 20px 0;
	}
	.sideMenuBar ul li:nth-child(4) {
		padding-bottom: 20px;
	}
	.sideMenuBar ul li a {
		text-decoration: none;
		color: #333;
	}
	.sideMenuBar ul li:nth-child(3) a,
	.sideMenuBar ul li:nth-child(4) a,
	.sideMenuBar ul li:nth-child(6) a,
	.sideMenuBar ul li:nth-child(7) a {
		font-size: 12px;
		color: rgb(144, 144, 144);
	}
	ul li a.h_side:hover {
		color: tomato;
	}
	section.section1 h2 {
		display:inline-block;
		margin:40px 0 0 300px
	}
	section.section1 form.mypage{
		width:60%;
		height:600px;
		margin:auto;
	}
	section.section1 ul {
		list-style-type: none;
		margin: 80px 5px;
	}
	section.section1 ul >li{
		padding: 5px 85px; 
	}
	section.section1 ul >li> label {
		font-size:17px;
		font-weight:700;
		color:rgb(200,10,30);
	}
	section.section1 ul >li> label.change_info {
		color:rgb(200,10,30);
		margin-left: 280px;
		font-size:14px;
		font-weight:550;
		text-decoration:underline;	
		text-decoration-color: rgb(200,10,30);
	}
	section.section1 li > input[type="text"].email,
	section.section1 li > input[type="text"].name {
		width:330px; 	height:30px;
		margin: 5px 2px;	
	}
	section.section1 li > input[type="text"] {
		width:75px; 	height:30px;
		margin: 5px 0px;
	}
	section.section1 li > input[type="text"].hp {
		width:100px; 	height:30px;
		margin: 5px 0.5px;
	}
	section.section1 li > input[type="text"].addr_number {
		width:250px;	height:30px;
	}
	section.section1 li > input[type="text"].addr {
		width:160px;	height:30px;
	}
	section.section1 li button {
		border: 1px solid lightgray;
		padding:0 8px;
		height:30px;
	}
	section.section1 li button.info1:hover, 
	section.section1 li button.info2:hover,
	section.section1 li button.info3:hover {
		height:30px;
		color:white;
		background-color:rgb(99,102,106);
	}
	section.section1 li button.info1{
		margin: 0 5px 3px 85px;
	} 
	section.section1 li button.info2{
		margin: 0 5px 3px 45px;
	} 
	section.section1 li button.info3 {
		margin: 0 5px 3px 40px;
	}
	section.section1 li button.cancel,
	section.section1 li button.OK{
		color:white;
		width:165px; height:40px;
		margin: 0 2px; 
		border:1px solid white;
	}
	section.section1 li button.cancel{
		background-color:rgb(99,102,106);
	}
	section.section1 li button.OK{
		background-color:rgb(200,10,30);
	}
	section.section1 li > span {
		font-size:13px;
	}
	section.section1 hr {
		width:340px;
		border:0.2px solid lightgray;
		margin:1px 3px;
	}
	
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="content">
		<aside class="sideMenuBar">
			<nav>
				<ul>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">나의 게시글 답변</a></li>
					<li><a href="#" class="h_side">1:1문의</a></li>
					<li><a href="#" class="h_side">상품평 관리</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="mypage_memberupdate.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="#" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<section class="section1">
				<h2>회원정보 수정</h2>
				<form class="mypage">
					<ul>
						<li><input type="text" class="email" placeholder="아이디(이메일)"> </li>
						<li><input type="text" class="name" placeholder="이름"> </li>
						<li>
							<input type="text" class="year" placeholder="생년월일">
							<input type="text" class="month">
							<input type="text" class="day">
							<input type="radio" class="gender"><span>남</span>
							<input type="radio" class="gender"><span>여</span>					
						</li>
						<li>
							<input type="text" class="hp" placeholder="전화번호">
							<input type="text" class="hp">
							<input type="text" class="hp">
						</li>
						<li><input type="text" class="addr_number" placeholder="우편번호"> <button type="button">주소검색</button> </li>	
						<li>
							<input type="text" class="addr" placeholder="도로명주소">		
							<input type="text" class="addr" placeholder="상세주소">
						</li>
						<li><label class="change_info">정보변경</label></li>
						<li><label>선택 동의항목</label><hr></li>
						<li>
							<span><input type="checkbox" name="choice">개인정보 수집 및 이용 동의</span>
									<button type="button" class="info1">내용보기</button> <hr>
						</li>
						<li> <span> 마케팅 수신동의( 이메일<input type="checkbox" name="email"> SMS<input type="checkbox" name="SMS"> )</span>
									<button type="button" class="info2">내용보기</button> <hr>
						</li>
						<li><span><input type="checkbox" name="choice">플랫폼 이용동의(엄마의 서재)</span>
									<button type="button" class="info3">엄마의서재란?</button> <hr>
						</li>
						<li>
							<button type="button" class="cancel">취소</button>
							<button type="button" class="OK">확인</button> 
						</li>
					</ul>
				</form>
		</section>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>