<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%
	String mid = request.getParameter("mid");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>교환/반품/환불안내</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<style>
			div.content{
				border:1px solid white;
				width:95%;
				margin:auto;
			}
			
		</style>
	</head>
	<body>
		
	<jsp:include page="../header.jsp" />
	<div class="content">
		<jsp:include page="../sideMenuBar.jsp"/>
		<div class="cancel_info">
			<div>교환/반품/환불 안내</div>
			<div>취소절차</div>
			<div>교환/반품/환불에 대한 문의사항은 1:1 문의 또는 고객센터 1577-5670로 문의 주시기 바랍니다.</div>
		</div>
		<div class="cancel_form">
			<div class="r1">
				<div>교환 및 반품</div>
				<div>가구의 특성상 상품박스를 개봉하거나 설치(조립)이 된 후에는 상품 가치가 하락하여</div>
				<div>재판매가 불가능한 상태이므로 교환/반품 기간이라도 교환/반품이 불가합니다.</div>
				<div>공정거래위원회 표준 약관에 의거하여 납품 후 7일 이내에 교환/반품 신청이 가능합니다.</div>
			</div>
			<div class="r2">
				<div >
					<label>교환 및 반품이 가능한 경우   <span>O</span></label>
					<ul>						
						<li>배송된 상품이 주문 내용과 상이한 경우</li>
						<li>상품에 오염이나 손상이 있는 경우</li>
						<li>상품 자체의 이상 및 결함이 있는 경우</li>
					</ul>
				</div>
				<div></div>
				<div>
					<label>교환 및 반품이 불가능한 경우  <span>X</span></label>
					<ul>						
						<li>상품 박스를 개봉한 경우</li>
						<li>상품을 설치(조립)한 경우</li>
						<li>고객님의 사용 및 부주의로 인하여 상품 가치가 감소한 경우</li>
					</ul>
				</div>
				</div>
				<div class="r3">
					<div>주문취소 및 교환/반품 비용 규정</div>
					<table	class="rule_table">
						<tr>
							<td colspan="2">구분</td>
							<td>반품비</td>
						</tr>
						<tr>
							<td>주문취소<br>(납품 전)</td>
							<td>배송 3일전 오후 6시 <br>~ <br>배송당일</td>
							<td>구매금액의 10% <br>(50,000원 이하 상품은 5,000원 정액)</td>
						</tr>
						<tr>
							<td rowspan="2">교환/반품<br>(납품 후)</td>
							<td>7일 이내</td>
							<td>박스 개봉 전<br>
								구매금액의 10% (50,000원 이하 상품은 5,000원 정액)<br><br>
								박스 개봉 후<br>
								구매금액의 50%</td>
						</tr>
						<tr>
							<td>7일 이후</td>
							<td>교환/반품 불가</td>
						</tr>
					</table>
				</div>
				<div class="r4">
					<div>환불 안내</div>
					<div>소비자 보호 규정에 의거하여 주문의 취소일 혹은 재화 등을 반환받은 날로부터</div>
					<div>영업일 3일 이내에 결제 금액을 환불해 드립니다.</div>
					<div>단, 신용카드 결제 일자에 맞추어 대금이 청구될 경우, 익월 신용카드 대금청구 시 카드사에서</div>
					<div>환급 처리됩니다. 무통장입금의 경우에는 주문의 취소 혹은 제품 회수 후 입금 계좌가 확인되면</div>
					<div> 3일 이내에 환불해 드립니다. (토요일, 일요일 및 공휴일은 제외)</div>
					</div>
				</div>
				
			</div>
		
		<jsp:include page="../footer.jsp" />
	</body>
</html>