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
				<span class="f_red">01 장바구니</span><hr>
				<span>02 주문서 작성</span><hr>
				<span>03 주문완료</span>
			</div>
			<div id="cart_content">
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
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>