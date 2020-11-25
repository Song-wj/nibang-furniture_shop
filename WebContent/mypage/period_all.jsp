<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문취소조회</title>
		<style>
			div.content{
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
			
			.search_order_cancel {
				position: relative;
			    min-height: 600px;
			    width: 800px;
			    margin-left: 18%;
			    margin-top: 107px;
			    text-align: center;
			}
			
			.search_order_cancel div.title {
				font-size: 35px;
				color: #333;
				margin-bottom: 44px;
			} 
			
			.search_order_cancel div.subtitle {
				font-size: 22px;
				color: #333;
				margin-bottom: 24px;
			}
			
			.search_order_cancel div.cancel_procedure {
				background-color: #f0f0f0;
			    padding: 55px 60px;
			    margin-bottom: 45px;
			    text-align: left;
			}
			
			.search_order_cancel div.cancel_procedure span {
				font-size: 14px;
				color: #333;
				letter-spacing: -0.3px;
				line-height: 40px;
			}
			
			.search_order_cancel button {
				display: inline-block;
    			background-color: #fff;
   				width: 182px;
    			height: 50px;
    			font-weight: 300;
    			color: #333;
    			border: none;
    			position: relative;
    			z-index: 0;
    			outline: 1px solid #aaa;
				margin-right: -3px;    			
			}
			.search_order_cancel button:focus {
				outline: 1px solid #aaa;
			}
			
			.search_order_cancel button.duration_btn4 {
				color: #c80a1e;
				outline: 1px solid #c80a1e;
			}
			
			.search_order_cancel table.order_table {
				border-top: 1px solid #aaa;
			    border-bottom: 1px solid #aaa;
			    width: 100%;
			    margin: 40px auto 200px;
			    border-collapse: collapse;
			}
			.search_order_cancel table.order_table tr td{
				font-size: 20px;
				color: #aaa;
				height: 24px;
				border-bottom: none;
				font-weight: 300;
				padding: 100px 0 300px;
			}
						
		</style>
	</head>
	<body>
		
	<jsp:include page="../header.jsp" />
	
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
					<li><a href="#" >1:1문의</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
					<li>회원정보</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<div class="search_order_cancel">
			<div class="title">주문취소 조회</div>
			<div class="subtitle">취소 절차</div>
			<div class="cancel_procedure">
				<span>∙  &nbsp;주문 취소는 상품 준비중 단계까지 가능하며, 부분취소는 불가합니다.</span><br>
				<span>∙  &nbsp;주문 내용을 변경하고자 할 경우, 주문 전체를 취소하고 새로 주문하셔야 합니다.</span><br>
				<span>∙  &nbsp;주문 등록 후에는 평일 기준(주말 및 공휴일 제외) <b style="color:#c80a1e;font-size:14px;">확정배송일 3일전</b>까지 취소 요청이 가능하며,</span><br>
				<span>&nbsp;&nbsp;&nbsp;배송 준비 또는 배송 중 (배송 2일전~당일)에는 <b style="color:#c80a1e;font-size:14px;">반품비용</b>이 청구됩니다.</span><br>
				<span>∙  &nbsp;매장에서 구매하신 제품의 경우, 쇼핑몰을 통한 주문 취소 신청이 불가하오니 매장으로 문의하시기 바랍니다.</span><br>
			</div>
			<div class="subtitle">취소 내역 조회</div>
			<button type="button" onclick="location.href='http://localhost:9000/sist_project_2/mypage/search_order_cancel.jsp'" class="duration_btn1">1개월</button>
			<button type="button" onclick="location.href='http://localhost:9000/sist_project_2/mypage/period3.jsp'" class="duration_btn2">3개월</button>
			<button type="button" onclick="location.href='http://localhost:9000/sist_project_2/mypage/period6.jsp'" class="duration_btn3">6개월</button>
			<button type="button" onclick="location.href='http://localhost:9000/sist_project_2/mypage/period_all.jsp'" class="duration_btn4">전체</button>
			<table class="order_table">
				<tbody>
					<tr>
						<td>취소내역이 없습니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp" />
	</body>
</html>