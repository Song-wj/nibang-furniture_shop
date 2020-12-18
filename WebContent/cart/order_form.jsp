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
    
#title {
    width: 100%;
    padding: 70px 0px 20px 0;
    text-align: center;
    font-size: 35.2px;
    letter-spacing: -1.1px;
    text-align: center;
    color: #333333;
    }
.sub_title {
    font-size: 28px;
    font-weight: 300;
    line-height: 1.43;
    letter-spacing: -0.8px;
    color: #333333;
    text-align: center; 
    padding: 40px 0px;
  	border-bottom: 1px solid #f0f0f0; 
    }

.w130 {
    width: 130px;
}
.w100 {
    width: 100px;
}
#ph1, #ph2, #ph3, #email, #email2{
	width:100px;
}
tr.mainProduct {
    border-bottom: solid 1px #aaaaaa;
}
td.w10_checkBox {
    vertical-align: top;
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
.f_bold {
    font-weight: bold;
}

.btn_buynow {
    border: solid 1px #c80a1e;
    background-color: white;
    color: #c80a1e;
    margin:20px 0;
}
.btn_delete {
    border: solid 1px #AAA;
    background-color: white;
    color: #333;
}
.totalPrice {
    float: right;
    font-size: 25px;
    font-weight: 500;
    letter-spacing: -0.7px;
    color: #c80a1e;
}
.btn_select_order {
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: none;
    background-color: #63666A;
    color: #FFF;
}
.btn_pay {
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: none;
    background-color:#c80a1e;;
    color: #FFF;
}
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

#delivery_info {
    margin: 0px auto;
    width: 900px;
}
#delivery_info_L {
    float: left;
    padding-right: 60px;
    width: 420px;
}
#delivery_info_R {
    float: left;
    padding-left: 60px;
    width: 420px;
}
.delivery_info_title {
	font-size: 15px;
    font-weight: bold;
    letter-spacing: -0.5px;
    color: #333333;
    margin-top:20px;
    margin-bottom: 32px;
}
#delivery_info label {
    font-size: 14px;
    display: block;
}
input[type=text] {
    padding: 12px 20px;
}
input[type=text] {
    height: 41px;
    display: inline-block;
    border: solid 1px #aaaaaa;
    box-sizing: border-box;
}
.w420 {
    width: 420px;
}
.w140 {
    width: 140px;
}

#s_email {
	height:41px;
}

label {
    margin: 19px 0px 11px 0px;
}

.DELIVERY_LIST1 { 
	margin: 29px 9px 30px 0px;
    float: left;
    border: solid 1px #c80a1e;
    background-color: white;
    color: #c80a1e;
    width: 175px;
    height: 41px;
    font-size: 14px;
}
.DELIVERY_LIST2 {
	margin: 29px 0px 30px 0px;
    float: left;
    border: solid 1px #c80a1e;
    background-color: white;
    color: #c80a1e;
    width: 175px;
    height: 41px;
    font-size: 14px;
}

button.find_addr {
	margin-left: 10px;
	border: none;
    background-color: #63666A;
    color: #FFF;
    width: 100px;
    height: 41px;
    font-size: 14px;
}
#pay_info {
	width:80%;
	margin:auto;
}
#pay_info div.total_price {
    padding: 41px 0px 36px 0px;
    display: inline-block;
    font-size: 25px;
    font-weight: 500;
    letter-spacing: -0.7px;
}
#pay_info div.total_price_red {
    float: left;
    padding-left: 50px;
	margin: 41px 0px 36px 0px;
	color: #c80a1e;
	display: inline-block;
    font-size: 25px;
    font-weight: 500;
    letter-spacing: -0.7px;
}
#pay_info label {
    display: inline-block;
    width: 125px;
    font-size: 15px;
    font-weight: bold;
    margin-top: 36px;
}
#pay_info button {
	margin: 10px;
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: solid 1px #AAA;
    background-color: white;
    color: #333;
}
.discription {
	width:90%;
    border: 1px solid #aaaaaa;
    padding: 40px 30px 40px 40px;
    margin: 35px auto;
    
}
.discription p {
    font-size: 14px;
    line-height: 25px;
    letter-spacing: -0.4px;
    color: #909090;
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
			<div id="content">
				<div id="title" style=" border-bottom: 1px solid white; ">주문서 작성</div>
				<div class="title_2">배송/결제 정보를 정확히 입력해주세요.</div>
				<div class="sub_title">주문 상품 정보</div>
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
				<div class="sub_title">주문 정보</div>
				<div id="delivery_info">
					<div id="delivery_info_L">
						<p class="delivery_info_title">주문자 정보</p>
						<label>주문자명</label>
						<input type="text" id="order_name"class="w420" value="">
						<label>연락처</label>
						<input type="text" id="ph1">
						<input type="text" id="ph2">
						<input type="text" id="ph3">
						<label>이메일</label>
						<input type="text" id="email">
						<input type="text" id="email2">
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
						<input type="text" id="recipient" class="w420">
						<p style="font-size: 13px; margin: 30px 0px 14px 0px;">* 제주도, 울릉도 지역은 온라인 주문이 불가하오니, 대리점에 직접 방문해주세요</p>
						<button type="button" class="DELIVERY_LIST1">내 배송지 목록</button>
						<button type="button" class="DELIVERY_LIST2">최근 배송지 목록</button>
						<input type="text" id="addr1" style="margin: 9px 0px;">
						<button type="button" class="find_addr">주소검색</button>
						<input type="text" id="addr2" class="w420" style="margin: 9px 0px;">
						<input type="text" id="addr3"class="w420" style="margin: 9px 0px;">
						<label>연락처</label>
						<input type="text" class="w100">
						<input type="text" class="w100">
						<input type="text" class="w100">
					</div>
					<div style="clear:both;"></div>	
					<label>배송 시 요청사항</label>
					<input type="text" placeholder="200자 이내로 작성해주세요." style="width: 900px;">		
				</div>
				<div style="    height: 140px;"></div>
				<div class="sub_title">결제 정보</div>
				<div id="pay_info">
					
					<div class="total_price" style="float:left;">
						총 상품금액
						<span>&nbsp;&nbsp;699,000원</span>
					</div>
					<div class="total_price_red" style="float:left;">
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
					<div style="height: 140px;"></div>
					<div class="sub_title" style="border-bottom:1px solid white;">결제 전 확인사항</div>
					<div class="discription">
						<p>1. 고객의 단순한 변심으로 교환, 반품 및 환불을 요구할 때 수반되는 배송비는 고객님께서 부담하셔야합니다.</p>
						<p>2. 상품을 개봉했거나 설치한 후에는 상품의 재판매가 불가능하므로 고객님의 변심에 대한 교환, 반품이 불가능함을 양지해 주시기 바랍니다.</p>
					</div>
					<div style="height: 80px;"></div>
				
				<div style="margin:40px 15% 85px 15%; text-align:center;">
					<a href="orderComplete.jsp">
					<input type="button" class="btn_pay" value="결제하기"></a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>