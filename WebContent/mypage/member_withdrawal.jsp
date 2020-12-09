<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	
<title>회원탈퇴</title>

<style>
 	.content {
		border:1px solid white;
		width:95%;
		margin:auto;
	}
	/* div.content aside.sideMenuBar{
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
	} */
	
	/* #section1_withdrawal {
		position: relative;
		min-height: 600px;
		width: 800px;
		margin-left: 18%;
		margin-top: 107px;
		text-align: center;
	}
	
	#section1_withdrawal div.title {
		font-size: 35px;
		color: #333;
		margin-bottom: 44px;
	}
	
	#section1_withdrawal div.subtitle,
	#section1_withdrawal .reason {
		font-size: 22px;
		color: #333;
		margin-bottom: 24px;
	}
	
	#section1_withdrawal .reason {
		font-size
	}
	
	#section1_withdrawal div.wbody {
		background-color: #e7e7e7;
		margin-bottom: 45px;
		text-align: left;
	}
	#section1_withdrawal div > div {
		width: 96%;
		margin: 0 10px;
		line-height: 30px;
		padding: 112px 66px 113px 66px;
		font-size: 14px;
	}
	#section1_withdrawal form.wcheckbox1 {
		margin-left: 110px;
		float: left;
		text-align: left;
	}
	#section1_withdrawal form.wcheckbox2 {
		text-align: left;
		margin-top: 47px;
		margin-left: 72px;
		display: inline-block;
	}
	#section1_withdrawal form.wtextarea {
		margin-top: 10%;
		margin-right: 60px;
		clear: both;
	}
	.content #section1_withdrawal form.wtextarea textarea {
		border: 1px solid gray;
		width: 620px;
		height: 220px;
		padding: 40px;
		resize: none;
		margin-left: 70px;
		font-size: 13px;
	}
	#section1_withdrawal form > span.wchk{
		font-size: 15px;
		padding-left: 5px;
	}
	.buttonarea {
		margin-top: 35px;
		padding-bottom: 200px;
	}
	.buttonarea button{
		width: 205px;
		height: 50px;
		font-size: 16px;
		color: white;
	}
	.buttonarea button:focus{
		outline: none !important;
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
	div.content #section1_withdrawal h2{
		margin-left:30%;
	}  */
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
		<div id="section1_withdrawal">
				<div class="title">회원 탈퇴</div>
				<div class="subtitle">회원탈퇴 및 재가입 정책</div>
				<div class="wbody">
					<div>
						회원탈퇴 시 개인정보는 즉시 파기되어 복구가 불가능합니다. 단, 회원으로 활동 시 작성하셨던 게시물
						및 댓글은 자동으로 삭제되지 않습니다. 또한, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우 또는 법령에서
						일정기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br>
						주문이나 배송 진행중인 거래내역이 있을 경우, 거래 종료 후 탈퇴가 가능합니다.
					</div>
				</div>
				<div class="reason">회원 탈퇴 이유</div><br>
				<div class="reason1">일룸몰을 이용하시면서 가장 불편했던 점을 알려주세요.</div>
				<div class="reason2">보다 나은 서비스를 위해 소중한 의견으로 활용하겠습니다.</div>
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
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>