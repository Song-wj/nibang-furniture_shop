<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
section.section1 {
	width: 100%;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}			

#cart_btn {
	margin:40px 15% 85px 15%; 
	text-align:center;
}

div.content div#title {
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
    padding: 60px 0px 50px 0px;
    text-align: center;
    font-size: 35.2px;
    letter-spacing: -1.1px;
    text-align: center;
    color: #333333;
    border-bottom: 1px solid #aaa;
    }
#sub_title {
    width: 100%;
     padding: 40px 0px;
    font-size: 18px;
    text-align: center;
    font-weight: bold;
    letter-spacing: -0.7px;
    color: #333333;
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
.w130 {
    width: 130px;
}
.w100 {
    width: 100px;
}
tr.mainProduct {
    border-bottom: solid 1px #aaaaaa;
}
td.w10_checkBox {
    vertical-align: top;
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
    padding-left: 40px;
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
.btn_all_order {
	width: 240px;
    height: 50px;
    font-size: 16px;
    border: none;
    background-color:#c80a1e;;
    color: #FFF;
}


</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
			<div class="order_lnb">
				<span class="f_red">01 장바구니</span><hr>
				<span>02 주문서 작성</span><hr>
				<span>03 주문완료</span>
			</div>
			<div id="content">
				<div id="title">장바구니</div>
				<div id="sub_title">주문하실 상품을 선택해주세요</div>
				<table class="order_product">
					<tr>
						<th class="w10">
							<img class="img_checkBox" id="allCheck" src="http://localhost:9000/sist_project_2/images/checkBox_w21_red.png">
						</th>	
						<th colspan="2">상품정보</th>		
						<th class="w130">단가</th>		
						<th class="w130">수량</th>
						<th class="w130">상품금액</th>			
						<th class="w100">주문</th>			
					</tr>
					<tr class="mainProduct">
						<td class="w10_checkBox">
							<img class="img_checkBox" id="allCheck" src="http://localhost:9000/sist_project_2/images/checkBox_w21_red.png">
						</td>
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
						<td>
							<input type="button" class="btn_buynow" value="바로구매">
							<input type="button" class="btn_delete" value="삭제하기">
						</td>
					</tr>
				</table>
				<div style="padding:70px 70px;">
					<input type="button" class="btn_delete" value="선택상품삭제">
					<span class="totalPrice">
					총 상품금액
					<span class="totalPrice"> &nbsp; &nbsp;699,000원</span>
					</span>	
				</div>
				<div id="cart_btn">
					<a href="order_form.jsp"><input type="button" class="btn_select_order" value="선택상품 주문"></a>
					<a href="order_form.jsp"><input type="button" class="btn_all_order" value="전체상품 주문"></a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>