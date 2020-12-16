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
		<jsp:include page="../sideMenuBar.jsp"/>
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
					<button type="button" class="duration_btn1">1개월</button>
					<button type="button" class="duration_btn2">3개월</button>
					<button type="button" class="duration_btn3">6개월</button>
					<button type="button" class="duration_btn4">전체</button>
				</div>
				<div style="margin:40px; text-align:center;">
						<span style="color:#aaa; font-size: 16px; ">최대 3년 이내 주문내역만 조회하실 수 있습니다.</span>
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