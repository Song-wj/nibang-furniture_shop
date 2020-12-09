<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문취소조회</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
		<style>
			div.content{
				border:1px solid white;
				width:95%;
				margin:auto;
			}
		</style>
		<script>
			$(document).ready(function(){
				$("#duration_btn1").click(function(){
					var str = "최근 1개월 내 취소내역이 없습니다.";
					$("#order_table tr:eq(0) td:eq(0)").html(str);
				});
				$("#duration_btn2").click(function(){
					var str = "최근 3개월 내 취소내역이 없습니다.";
					$("#order_table tr:eq(0) td:eq(0)").html(str);
				});
				$("#duration_btn3").click(function(){
					var str = "최근 6개월 내 취소내역이 없습니다.";
					$("#order_table tr:eq(0) td:eq(0)").html(str);
				});
				$("#duration_btn4").click(function(){
					var str = "취소내역이 없습니다.";
					$("#order_table tr:eq(0) td:eq(0)").html(str);
				});
			});
		</script>
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
			<button type="button" id="duration_btn1">1개월</button>
			<button type="button" id="duration_btn2">3개월</button>
			<button type="button" id="duration_btn3">6개월</button>
			<button type="button" id="duration_btn4">전체</button>
			<table class="order_table" id="order_table">
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