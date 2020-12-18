<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>
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

#title {
    width: 100%;
    padding: 70px 0px 20px 0;
    text-align: center;
    font-size: 35.2px;
    letter-spacing: -1.1px;
    text-align: center;
    color: #333333;
    }
.order_lnb {
    width: 100%;
    background-color: #F0F0F0;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    }
.f_red{    color: #c80a1e;}
.order_lnb hr {
    width: 25px;
    border: solid 1px #aaaaaa;
    display: inline-block;
    margin: 0px 21px;
    vertical-align: middle;}

div.title_2 {
	width: 100%;
    font-size: 22.1px;
    text-align: center;
    font-weight: 300;
    letter-spacing: -0.7px;
    color: #333333;
    padding: 0px 0px 70px 0px;
    border-bottom: 1px solid #f0f0f0;
}

p {
	font-size: 22px;
	text-align: center;
    padding: 80px 0px 0px 0px;
    color: #aaaaaa;
}

.order_num {
	font-size: 18px;
	text-align: center;
	padding: 6px 0px;
    color: #c80a1e;
}

.event_img {
	padding: 50px 0px;
	text-align: center;
}
.event_img hr{
	border-top:1px solid #f0f0f0;
	padding: 40px 0px;
}

.subtitle {
    font-size: 28px;
    font-weight: 300;
    line-height: 1.43;
    letter-spacing: -0.8px;
    color: #333333;
    text-align: center;
    padding-bottom:20px;
}

table.delivery_info {
	width: 90%;
    margin: auto;
    border-top: 1px solid #AAAAAA;
    border-bottom: 1px solid #aaaaaa;
    letter-spacing: -1.5px;
    text-align: center;
}

table.delivery_info th {
    padding: 14px 0px;
    color: #aaaaaa;
    border-bottom: 1px solid #f0f0f0;
}

table.delivery_info td {
    text-align: center;
    padding: 20px;
    line-height: 30px;
}

#bottom_btn {
	margin:40px 15% 85px 15%; 
	text-align:center;
}

#deliveryBtn {
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: none;
    background-color: #63666A;
    color: #FFF;
}
#indexBtn {
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: none;
    background-color:#c80a1e;;
    color: #FFF;
}

.h90 {
	height:90px;
}

table.order_product {
	width:90%;
	margin:auto;
}
table.order_product th {
    padding: 14px 20px;
    text-align: center;
    font-size: 13px;
    color: #aaaaaa;
    border-top: solid 1px #AAAAAA;
    border-bottom: solid 1px #F0F0F0;
}

table.order_product tr {
    border-bottom: solid 1px #F0F0F0;
}

.order_product td {
    padding: 20px 0px;
    font-size: 15px;
    text-align: center;
}

tr.mainProduct img.product_img {
    vertical-align: middle;
    margin-left: -17px;
}
td.productInfo {
    text-align: left;
    line-height: 25px;
    padding-top: 50px;
}
.totalPrice {
    float: right;
    font-size: 25px;
    font-weight: 500;
    letter-spacing: -0.7px;
    color: #c80a1e;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
			<div class="order_lnb">
				<span>01 장바구니</span><hr>
				<span>02 주문서 작성</span><hr>
				<span class="f_red">03 주문완료</span>
			</div>
			<div id="content">
				<div id="title" style=" border-bottom: 1px solid white;">주문완료</div>
				<div class="title_2">주문 상품 및 내용을 확인해주세요..</div>
				<p>구매해주셔서 감사합니다.</p>
				<span class="order_num" style="margin:0px 10px 0px 510px ;">주문번호</span>
				<span class="order_num">OIL201208168</span>
				<div class="event_img">
					<hr>
					<a href="http://localhost:9000/sist_project_2/event/event_main.jsp">
					<img src="http://localhost:9000/sist_project_2/images/event1.jpg"></a>
				</div>
				<p class="subtitle">배송지 정보</p>
				<table class="delivery_info">
						<tr>
							<th class="w130">주문자명</th>
							<th class="w130">받는사람</th>
							<th>주소</th>
							<th class="w200">연락처 1</th>
							<th class="w200">연락처 2</th>
						</tr>
						<tr>
							<td>홍길동</td>
							<td>홍길동</td>
							<td style="text-align: left; padding-left: 40px;">[06253]<br>서울 강남구 강남대로 310 역삼동 유니온센터오피스텔</td>
							<td>010-2222-2222</td>
							<td>02-2222-2222</td>
						</tr>
				</table>
				<div class="h90"></div>
				<p class="subtitle">주문 상품 정보</p>
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
					<span>*상품 구매 시, 별도의 배송비가 발생하지 않습니다.</span>
					<span class="totalPrice">
					총 상품금액
					<span class="totalPrice"> &nbsp; &nbsp;699,000원</span>
					</span>	
				</div>
				<div id="bottom_btn">
					<a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp"><input type="button" id="deliveryBtn" value="주문/배송 조회가기"></a>
					<a href="../index.jsp"><input type="button" id="indexBtn" value="홈으로 가기"></a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>