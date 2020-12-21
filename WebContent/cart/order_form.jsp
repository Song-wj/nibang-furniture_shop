<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문서 작성</title>
<style>
section.section1 {
	width: 100%;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}			
div.content {
	margin-top: 20px;
    margin-bottom: 40px;
   	padding-left:51%;
}	

</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
			<div class="order_lnb">
				<span>01 장바구니</span><hr>
				<span class="f_red">02 주문서 작성</span><hr>
				<span>03 주문완료</span>
			</div>
			<div id="order_form_content">
				<div id="order_form_title" style=" border-bottom: 1px solid white; ">주문서 작성</div>
				<div class="title_2">배송/결제 정보를 정확히 입력해주세요.</div>
				<div class="order_form_sub_title">주문 상품 정보</div>
				<table class="order_product">
					<tr>
						<th colspan="2">상품정보</th>		
						<th class="w130">단가</th>		
						<th class="w130">수량</th>
						<th class="w130">상품금액</th>			
						<th class="w100">배송형태</th>			
					</tr>
					<tr class="mainProduct">
						<td>
							<a href="http://localhost:9000/sist_project_2/product_detail/table_모리니.jsp">
								<img class="product_img" src="http://localhost:9000/sist_project_2/images/table_모리니.jpg">
							</a>
						</td>
						<td class="productInfo">
							<span class="f_bold">모리니</span>
							<br>
							<span>테이블 1700폭</span>
							<br>
							<br>
							<br>
							<br>
							<br>
							<span style="vertical-align: bottom;">
								<b>[필수] &nbsp; &nbsp;</b>
								색상 : 
								<span>DIO</span>
							</span>
						</td>
						<td class="mainPrice">699,000원</td>
						<td class="mainQty">1</td>
						<td class="groupPrice">699,000원</td>
						<td>-</td>
					</tr>
				</table>
				<div style="padding:70px 70px;">
					<span>*택배/시공 상품이 별도 배송될 수 있습니다.</span>
					<span class="totalPrice">
					총 상품금액
					<span class="totalPrice"> &nbsp; &nbsp;699,000원</span>
					</span>	
				</div>
				<div class="order_form_sub_title">주문 정보</div>
				<div id="delivery_info">
					<div id="delivery_info_L">
						<p class="delivery_info_title">주문자 정보</p>
						<label>주문자명</label>
						<input type="text" id="order_name" value="">
						<label>연락처</label>
						<input type="text" id="order_form_ph1">
						<input type="text" id="order_form_ph2">
						<input type="text" id="order_form_ph3">
						<label>이메일</label>
						<input type="text" id="order_form_email">
						<input type="text" id="order_form_email2">
						<select id ="s_email">
								<option value="직접입력">직접입력
								<option value="@naver.com">naver.com
								<option value="@nate.com">nate.com
								<option value="@daum.net">daum.net
								<option value="@hanamil.net">hanamil.net
								<option value="@gmail.com">gmail.com
								<option value="@yahoo.co.kr">yahoo.co.kr
						</select>
					</div>	
					<div id="delivery_info_R">
						<p class="delivery_info_title">배송지 정보</p>
						<label>받는사람</label>
						<input type="text" id="recipient">
						<p style="font-size: 13px; margin: 30px 0px 14px 0px;">* 제주도, 울릉도 지역은 온라인 주문이 불가하오니, 대리점에 직접 방문해주세요</p>
						<button type="button" class="DELIVERY_LIST1">내 배송지 목록</button>
						<button type="button" class="DELIVERY_LIST2">최근 배송지 목록</button>
						<input type="text" id="order_form_addr1">
						<button type="button" class="find_addr">주소검색</button>
						<input type="text" id="order_form_addr2">
						<input type="text" id="order_form_addr3">
						<label>연락처</label>
						<input type="text" id="order_form_ph1">
						<input type="text" id="order_form_ph2">
						<input type="text" id="order_form_ph3">
					</div>
					<div style="clear:both;"></div>	
					<label>배송 시 요청사항</label>
					<input type="text" placeholder="200자 이내로 작성해주세요." style="width: 900px;">		
				</div>
				<div class="h140"></div>
				<div class="order_form_sub_title">결제 정보</div>
				<div id="pay_info">
					
					<div class="total_price">
						총 상품금액
						<span>&nbsp;&nbsp;699,000원</span>
					</div>
					<div class="total_price_red">
						총 결제금액
						<span>&nbsp;&nbsp;699,000원</span>
					</div>
					
					<div style="clear:both;"></div>
					<hr style="border:1px solid #f0f0f0;">
					<div>
						<label>결제수단</label>
						<button type="button">신용카드</button>
						<button type="button">무통장 입금</button>
						<button type="button">실시간 계좌이체</button>
					</div>
					<hr style="margin-top: 25px; border: 1px solid #f0f0f0;">
				</div>
					<div class="h140"></div>
					<div class="order_form_sub_title" style="border-bottom:1px solid white;">결제 전 확인사항</div>
					<div class="discription">
						<p>1. 고객의 단순한 변심으로 교환, 반품 및 환불을 요구할 때 수반되는 배송비는 고객님께서 부담하셔야합니다.</p>
						<p>2. 상품을 개봉했거나 설치한 후에는 상품의 재판매가 불가능하므로 고객님의 변심에 대한 교환, 반품이 불가능함을 양지해 주시기 바랍니다.</p>
					</div>
					<div class="h80"></div>
				
				<div id="order_form_btn">
					<a href="orderComplete.jsp">
					<input type="button" class="btn_pay" value="결제하기"></a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>