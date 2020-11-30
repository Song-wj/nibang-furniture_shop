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
<title>회원 정보 - 수정</title>
</head>
<style>
	.content {
		border:1px solid white;
		width:95%;
		margin:auto;
	}
	div.content aside.sideMenuBar{
		border:1px solid rgb(170, 170, 170);
		margin-top:9%;
		width:165px;	
		float:left;			
	}
    div.content aside.sideMenuBar ul{
		padding-left:20px;
	}
	div.content aside.sideMenuBar ul li{
		list-style-type:none;
		margin-top:30px;
		font-size:14.5px;
		font-weight:540;
	}
	div.content aside.sideMenuBar ul li:nth-child(3) ,
	div.content aside.sideMenuBar ul li:nth-child(4) ,
	div.content aside.sideMenuBar ul li:nth-child(5) ,
	div.content aside.sideMenuBar ul li:nth-child(7) ,
	div.content aside.sideMenuBar ul li:nth-child(8) ,
	div.content aside.sideMenuBar ul li:nth-child(10) ,
	div.content aside.sideMenuBar ul li:nth-child(11)  {
		margin-top:15px;
	}
	div.content aside.sideMenuBar ul li:nth-child(3) a,
	div.content aside.sideMenuBar ul li:nth-child(4) a,
	div.content aside.sideMenuBar ul li:nth-child(5) a,
	div.content aside.sideMenuBar ul li:nth-child(7) a ,
	div.content aside.sideMenuBar ul li:nth-child(8) a ,
	div.content aside.sideMenuBar ul li:nth-child(10) a,
	div.content aside.sideMenuBar ul li:nth-child(11) a{
		font-size:12px;				
		color:rgb(144, 144, 144);
		text-decoration:none;
		font-weight:0;
	}
	div.content aside.sideMenuBar ul li:nth-child(3) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(4) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(5) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(7) a:hover ,
	div.content aside.sideMenuBar ul li:nth-child(8) a:hover ,
	div.content aside.sideMenuBar ul li:nth-child(10) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(11) a:hover{
		color:rgb(200,10,30);
	}
	
	.memberupdate{
		position: relative;
		min-height: 600px;
		width: 800px;
		margin-left: 18%;
		margin-top: 107px;
		text-align: center;
	}
	.memberupdate h2 {
		font-size: 35px;
		display:inline-block;
		text-align:center;
		margin:1% 0 0 0;
	}
	.memberupdate ul {
		list-style-type: none;
		margin-top: 30px;
	}
	.memberupdate ul >li{
		padding: 5px 60px 5px 10px; 
	}
	.memberupdate ul >li> label {
		font-size:17px;
		font-weight:700;
		color:rgb(200,10,30);
		margin-left: -230px;
	}
	.memberupdate ul >li> label.change_info {
		color:rgb(200,10,30);
		margin-left: 270px;
		font-size:14px;
		font-weight:550;
		text-decoration:underline;	
		text-decoration-color: rgb(200,10,30);
	}
	.memberupdate li > input[type="text"].email,
	.memberupdate li > input[type="text"].name {
		width:330px; 	height:30px;
		margin: 5px 2px;	
	}
	.memberupdate li > input[type="text"] {
		width:85px; 	height:30px;
		margin: 5px 0px;
	}
	.memberupdate li > input[type="text"].hp {
		width:105px; 	height:30px;
		margin: 5px 1px;
	}
	.memberupdate li > input[type="text"].addr_number {
		width:250px;	height:30px;
	}
	.memberupdate li > input[type="text"].addr {
		width:163px;	height:30px;
	}
	.memberupdate li button {
		border: 1px solid lightgray;
		padding:0 4px 0 4px;
		margin-left: 10px;
		height:30px;
		font-size: 13px;
	}
	.memberupdate li button.info1:hover, 
	.memberupdate li button.info2:hover,
	.memberupdate li button.info3:hover {
		height:30px;
		color:white;
		background-color:rgb(99,102,106);
	}
	.memberupdate li button.info1{
		margin: 0 5px 3px 90px;
	} 
	.memberupdate li button.info2{
		margin: 0 5px 3px 55px;
	} 
	.memberupdate li button.info3 {
		margin: 0 5px 3px 43px;
	}
	.memberupdate li button.cancel,
	.memberupdate li button.OK{
		color:white;
		width:160px; height:40px;
		margin: 0 2px; 
		border:1px solid white;
	}
	.memberupdate li button.cancel{
		background-color:rgb(99,102,106);
	}
	.memberupdate li button.OK{
		background-color:rgb(200,10,30);
	}
	.memberupdate li button.cancel:hover {
		background-color:rgb(79,82,86);
	}
	.memberupdate li button.OK:hover {
		background-color:rgb(160,14,43);
	}
	.memberupdate li > span {
		font-size:13px;
		margin-left:3px;
	}
	.memberupdate hr {
		width:325px;
		border:0.2px solid lightgray;
		margin:1px 180px;
	}
	
</style>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="content">
		<aside class="sideMenuBar">
			<nav>
				<ul>
					<li>마이페이지</li>
					<li>나의 쇼핑내역</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp">주문/배송 조회</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/search_order_cancel.jsp">주문/취소 조회</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
					<li>나의 게시글 답변</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiry.jsp" >1:1문의</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
					<li>회원정보</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<div class="memberupdate" id="memberupdate">
			<!-- <form class="mypage"> -->
				<h2>회원정보 수정</h2>
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
				<!-- </form> -->
		</div>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>