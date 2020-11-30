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
		
	.white_content1 {
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: rgba(0, 0, 0, 0.8);
		opacity:0;
		-webkit-transition: opacity 400ms ease-in;
		-moz-transition: opacity 400ms ease-in;
		transition: opacity 400ms ease-in;
		pointer-events: none;
	}
	.white_content1:target {
		opacity:1;
		pointer-events: auto;
	} 
	.white_content1 > div.personalinfo_agree {
		 position: absolute; 
		 top: 70px;
		 left: 150px;
		 width: 910px;
		 height: 500px;
		 padding: 16px;
		 border: 2px solid white;
		 background-color: white;
		 overflow: auto;	
	}
	.white_content2 {
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: rgba(0, 0, 0, 0.8);
		opacity:0;
		-webkit-transition: opacity 400ms ease-in;
		-moz-transition: opacity 400ms ease-in;
		transition: opacity 400ms ease-in;
		pointer-events: none;
	}
	.white_content2:target {
		opacity:1;
		pointer-events: auto;
	} 
	.white_content2 > div.marketing_agree {
		 position: absolute; 
		 top: 150px;
		 left: 180px;
		 width: 910px;
		 height: 200px;
		 padding: 16px;
		 border: 2px solid white;
		 background-color: white;
		 overflow: auto;	
	}
	.white_content3 {
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: rgba(0, 0, 0, 0.8);
		opacity:0;
		-webkit-transition: opacity 400ms ease-in;
		-moz-transition: opacity 400ms ease-in;
		transition: opacity 400ms ease-in;
		pointer-events: none;
	}
	.white_content3:target {
		opacity:1;
		pointer-events: auto;
	} 
	.white_content3 > div.mothers {
		 position: absolute; 
		 top: 150px;
		 left: 180px;
		 width: 910px;
		 height: 220px;
		 padding: 16px;
		 border: 2px solid white;
		 background-color: white;
		 overflow: auto;	
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
		margin: 0 0 3px 0;
	} 
	.memberupdate li button.info2{
		margin: 0 0px 3px 0px;
	} 
	.memberupdate li button.info3 {
		margin: 0 5px 3px 0;
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
	}
	.memberupdate li > span.chk, 
	.memberupdate li > span.chk1, 
	.memberupdate li > span.chk2 {
		margin: 0 -100px 0 180px;
		display:inline-block;
		float:left;
	}
	.memberupdate li > span.chk1, 
	.memberupdate li > span.chk2 {
		margin: 0 -140px 0 180px;
		display:inline-block;
		float:left;
	}
	
	.memberupdate hr {
		width:325px;
		border:0.2px solid lightgray;
		margin:2px 180px;
	}
	
	
	
	.personalinfo_agree div.title,
	.marketing_agree div.title,
	.mothers div.title 	{
		font-size:20px;
		font-weight:600;
		margin:10px 0 0 10px;
		color:black;
		display:inline-block;
	}
	.personalinfo_agree img{
		margin-left:500px;
	}
	.marketing_agree img{
		margin-left:600px;	
	}
	.mothers img{
		margin-left:700px;		
	}
	
	.personalinfo_agree div.content{
		font-size:14px;
		font-weight:550;
		text-align:left;
	}
	.marketing_agree div.content,
	.mothers div.content{
		font-size:14px;
		text-align:left;
	}
	
	.personalinfo_agree div.table {
		margin: 20px 10px 20px 10px;
		font-size:12px;
	}
	.personalinfo_agree div.table th {
		text-align:center;
	}
	.personalinfo_agree div.table td:first-child, 
	.personalinfo_agree div.table td:nth-child(2) {
		padding: 10px 150px 10px 10px;
		text-align: left;
	}
	.personalinfo_agree div.table td:last-child {
		text-align:center;
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
							<span class="chk"><input type="checkbox" name="choice">개인정보 수집 및 이용 동의</span>
									<div class="info1div"><a href="#open1"  class="info1"><button type="button" class="info1">내용보기</button> <hr>
									<div class="white_content1" id="open1">
									<div class="personalinfo_agree" id="personalinfo_agree">
										<div class="title">
											개인정보 수집 및 이용 동의 [선택]
										</div>
											<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
										<div class="content">
											㈜ 일룸(이하 ‘일룸’ 또는 ‘회사’)은 최초 회원 가입 또는 서비스 이용 시 이용자로부터 아래와 같은 개인정보를 수집하고 있습니다. 
											귀하께서는 선택항목 수집/이용에 대한 동의를 거부하실 수 있으며, 이는 서비스 제공에 필수적으로 제공되어야 하는 정보가 아니므로 
											동의를 거부하시더라도 회원가입, 서비스 이용, 홈페이지 이용 등이 가능합니다.
											다만 선택항목 수집/이용에 대하여 동의하지 않으실 경우, 이벤트 참여 및 판촉 안내 등 서비스에 제한이 있을 수 있습니다.
										</div>
										<div class="table">
											<table border=2>
												<tr>
													<th>수집항목</th>
													<th>이용목적</th>
													<th>보유 및 이용기간</th>
												</tr>
												<tr>
													<td>- 성명<br>- 이메일주소<br>- 휴대폰번호<br>- 결혼여부<br>- 결혼기념일<br>- 자녀유무<br>
														- 첫자녀탄생연도<br>- 자택주소<br>- 마케팅 수신 동의여부<br>- 플랫폼 이용 동의여부<br>- 관심매장
													</td>
													<td>
														<br><br>
														1. 맞춤서비스 제공 및 이벤트 정보 제공<br> 2. 신규서비스 및 상품 개발<br> 3. 시장조사, 고객만족도조사, 고객별 통계 분석자료 활용<br>
														4. 고객 편의 제공 및 이벤트 경품 배송<br> 5. 광고성 정보 발송<br>
													</td>
													<td>
														<br><br><br>회원 탈퇴 시<br> 또는 <br> 동의 철회 시
													</td>
												</tr>
											</table>
										</div>
									</div>
						</li>
						<li> <span class="chk1">마케팅 수신동의( 이메일<input type="checkbox" name="email"> SMS<input type="checkbox" name="SMS"> )&nbsp;&nbsp;</span>
									<div class="info2div"><a href="#open2"  class="info2"><button type="button" class="info2">내용보기</button> <hr>
									<div class="white_content2" id="open2">
										<div class="marketing_agree">
											<div class="title">
												마케팅 정보 수신 동의
											</div>
												<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
											<div class="content">
												<br>특별한 제안과 회원 한정 혜택을 받아 보려면 마케팅 정보 수신에 동의해주세요. <br>
												마케팅 정보 수신에 동의하지 않으시는 경우, 신제품 안내, 이벤트 소식 안내 및 참여, 혜택 적용 등이 제한됩니다.
											</div>
										</div>
						</li>
						<li><span class="chk2"><input type="checkbox" name="choice">플랫폼 이용동의(엄마의 서재)</span>
									<div class="info3div"><a href="#open3"  class="info3"><button type="button" class="info3">'엄마의서재'란?</button> <hr>
									<div class="white_content3" id="open3">
										<div class="mothers">
											<div class="title">
												엄마의 서재란?
											</div>
												<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
											<div class="content">
												엄마의 서재는 엄마들이 잠시 잊고 지냈던 여유와 재충전의 기쁨을 느낄 수 있도록, 나만의 시간을 통해 온전한 자기 자신의 행복을 누릴 수 있도록, 일룸에서 오직 엄마들만을 위해 만든 특별한 공간입니다. 플랫폼 이용에 동의하시면, 엄마의서재와 관련된 특별한 소식과 더불어 혜택을 누리실 수 있습니다.
												<!-- <br><br>엄마의 서재에 대해 더 자세히 알고싶으시면 여기를 클릭하세요. -->
											</div>
						</li>
						<li>
							<button type="button" class="cancel">취소</button>
							<button type="button" class="OK">확인</button> 
						</li>
						</div>
					</ul>
		</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>