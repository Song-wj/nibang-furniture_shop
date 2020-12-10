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
<title>주문/배송조회</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
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
						<li><a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiry.jsp" >1:1문의</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
						<li>회원정보</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
					</ul>
				</nav>
			</aside>
			<div class="search_order">
				<div class="title">주문/배송 조회</div>
				<div class="order_status_div" style="margin-bottom:20px;  padding: 23px 53px;">
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus1.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus2.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus3.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus4.png" class="status_img">
					</div>
					<div class="bar_item"></div>
					<div class="status_item">
						<img src="http://localhost:9000/sist_project_2/images/orderStatus5.png" class="status_img">
					</div>
				</div>
				<div style="text-align:left; margin: 30px 0;">
						<ul>
							<li>‘택배&시공’건의 경우 ‘배송중’ 상태로 표시되어도 품목별로 배송일이 다를 수 있습니다.</li>
							<li>주문 후 일룸에서 발송해 드리는 알림문자의 배송예정일이 실제 배송일입니다.</li>
						</ul>
				</div>
				<div class="duration_btn">
					<table class="r_btn" >
						<tr>
							<td id="btn1"><button type="button" onclick="r_change1()" >1개월</button></td>
							<td id="btn2"><button type="button" onclick="r_change2()" >3개월</button></td>
							<td id="btn3"><button type="button" onclick="r_change3()" >6개월</button></td>
							<td id="btn4"><button type="button" onclick="r_change4()" >전체</button></td>
						</tr>
					</table>
				</div>
				<div style="margin:40px; text-align:center; color:#aaa; font-size: 16px;">
						최대 3년 이내 주문내역만 조회하실 수 있습니다.
				</div>
				<table class="order_table">
					<tbody>
						<tr>
							<td class="nolist">주문내역이 없습니다.</td>
						</tr>
					</tbody>
				</table>
			</div>  
		</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>