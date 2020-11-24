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
	
<title>회원탈퇴</title>

<style>
 	.content {
		padding-left: 10%; 
		display: inline-block;
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
	
	div.content #section1_withdrawal {
		margin-top: 14%;
		padding-left: 22%;
	}
	.section1 div.whead {
		font-size: 30px;
		padding-left: 23%;
	}
	.section1 h5 {
		padding-left: 19%;
		color: #333;
		font-weight: 400;
	}
	.section1 h5.reason {
		padding-left: 24%;
	}
	.section1 h6.reason1 {
		padding-left: 11%;
	}
	.section1 h6.reason2 {
		padding-left: 10%;
	}
	.section1 div.wbody {
		background-color: rgb(231,231,231);
		width: 59%;
		margin-left: 8px;
	}
	.section1 div > div {
		width: 96%;
		margin: 0 10px;
		line-height: 30px;
		padding: 112px 40px;
		font-size: 13px;
	}
	.content .section1 form.wcheckbox1 {
		margin-left: 40px;
		float: left;
	}
	.content .section1 form.wcheckbox2 {
		margin-top: 47px;
		margin-left: 72px;
		display: inline-block;
	}
	.content .section1 form.wtextarea {
		margin-top: 10%;
		clear: both;
	}
	.content .section1 form.wtextarea textarea {
		border: 1px solid gray;
		width: 620px;
		height: 220px;
		padding: 40px;
		resize: none;
		font-size: 13px;
	}
	.content .section1 form > span.wchk{
		font-size: 15px;
		padding-left: 5px;
	}
	.buttonarea {
		margin-top: 35px;
		padding-left: 90px;
		padding-bottom: 30px;
	}
	.buttonarea button{
		width: 205px;
		height: 50px;
		font-size: 16px;
		color: white
	}
	.buttonarea button.btn_cancel{
		background-color: #c80a1e;
		border: none;
		margin-right: 3px;
	}
	.buttonarea button.btn_withdrawal{
		background-color: #63666A;
		border: none;
	}
	.buttonarea button.btn_cancel:hover{
		opacity: 0.7;
	}
	.buttonarea button.btn_withdrawal:hover{
		opacity: 0.7;
	}
	div.content section.section1 h2{
		margin-left:30%;
	} 
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<div class="content">
		<aside class="sideMenuBar">
			<nav>
				<ul>
					<li>마이페이지</li>
					<li>나의 쇼핑내역</li>
					<li><a href="#">주문/배송 조회</a></li>
					<li><a href="#">주문/취소 조회</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
					<li>나의 게시글 답변</li>
					<li><a href="#" >1:1문의</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
					<li>회원정보</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<section class="section1" id="section1_withdrawal">
				<div class="whead">회원 탈퇴</div><br><br>
				<h5>회원탈퇴 및 재가입 정책</h5><br>
				<div class="wbody">
					<div>
						회원탈퇴 시 개인정보는 즉시 파기되어 복구가 불가능합니다. 단, 회원으로 활동 시 작성하셨던 게시물
						및 댓글은 자동으로 삭제되지 않습니다. 또한, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우 또는 법령에서
						일정기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br>
						주문이나 배송 진행중인 거래내역이 있을 경우, 거래 종료 후 탈퇴가 가능합니다.
					</div>
				</div>
				<br><br><br>
				<h5 class="reason">회원 탈퇴 이유</h5><br>
				<h6 class="reason1">일룸몰을 이용하시면서 가장 불편했던 점을 알려주세요.</h6>
				<h6 class="reason2">보다 나은 서비스를 위해 소중한 의견으로 활용하겠습니다.</h6>
				<form class="wcheckbox1"><br><br>
					<input type="checkbox"><span class="wchk">상품 다양성(디자인 불만족)</span><div></div><br>
					<input type="checkbox"><span class="wchk">이용빈도 낮음</span><div></div><br>
					<input type="checkbox"><span class="wchk">쇼핑몰 속도 불안</span><div></div><br>
					<input type="checkbox"><span class="wchk">가격품질 불만</span><div></div><br>
					<input type="checkbox"><span class="wchk">개인정보 유출 우려</span><div></div><br>
					<input type="checkbox"><span class="wchk">아이디 변경을 위해 탈퇴 후 재가입</span><br>
				</form>
				<form class="wcheckbox2">
					<input type="checkbox"><span class="wchk">교환/품질 불만</span><div></div><br>
					<input type="checkbox"><span class="wchk">회원특혜/쇼핑혜택 부족</span><div></div><br>
					<input type="checkbox"><span class="wchk">배송지연</span><div></div><br>
					<input type="checkbox"><span class="wchk">A/S불만족</span><div></div><br>
					<input type="checkbox"><span class="wchk">기타</span><br>
				</form>
				<form class="wtextarea">
					<textarea placeholder="기타의견 (100글자 이내)"></textarea>
				</form>
				<div class="buttonarea">
					<button type="button" class="btn_cancel">취소</button>
					<button type="button" class="btn_withdrawal">탈퇴하기</button>
				</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>