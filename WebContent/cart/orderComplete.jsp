pgp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
    %>
<%
	String pid = request.getParameter("pid");
	//String oid = request.getParameter("oid");
	orderDAO odao = new orderDAO();
	orderVO vo = odao.getOrder(pid);
%>
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
			<div id="orderComplete_content">
				<div id="title" style=" border-bottom: 1px solid white;">주문완료</div>
				<div class="title_2">주문 상품 및 내용을 확인해주세요..</div>
				<p>구매해주셔서 감사합니다.</p>
				<span class="order_num" style="margin:0px 10px 0px 510px ;">주문번호</span>
				<span class="order_num"><%= vo.getOid() %></span>
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
							<td><%= vo.getName() %></td>
							<td><%= vo.getRname() %></td>
							<td style="text-align: left; padding-left: 40px;"><%=vo.getRaddrnum() %><br><%=vo.getRaddr() %></td>
							<td><%=vo.getHp() %></td>
							<td><%=vo.getRph() %></td>
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
							<a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?pid=<%=vo.getPid()%>&mid=<%=vo.getMid()%>">
								<img class="product_img" src="http://localhost:9000/sist_project_2/upload/<%=vo.getSimg()%>" width='200px' height='200px'>
							</a>
						</td>
						<td class="productInfo">
							<span class="f_bold"><%= vo.getPname() %></span>
							<br>
							<span><%=vo.getPinfo() %></span>
							<br>
							<br>
							<br>
							<br>
							<br>
							<span style="vertical-align: bottom;">
								<b>[필수] &nbsp; &nbsp;</b>
								색상 : 
								<span><%=vo.getColor() %></span>
							</span>
						</td>
						<td class="mainPrice"><%=vo.getPrice() %></td>
						<td class="mainQty"><%=vo.getPcnt() %></td>
						<td class="groupPrice"><%=vo.getTotal() %></td>
						<td>-</td>
					</tr>
				</table>
				<div style="padding:70px 70px;">
					<span>*상품 구매 시, 별도의 배송비가 발생하지 않습니다.</span>
					<span class="totalPrice">
					총 상품금액
					<span class="totalPrice"> &nbsp; &nbsp;<%=vo.getTotal() %></span>
					</span>	
				</div>
				<div id="bottom_btn">
					<a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp"><input type="button" id="deliveryBtn" value="주문/배송 조회가기"></a>
					<a href="../index.jsp"><input type="button" id="indexBtn" value="홈으로 가기"></a>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>