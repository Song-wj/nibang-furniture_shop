<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*, java.util.*"
    %>
    
  <%
 	 SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String mid ="";
	if(svo != null){
		 mid = svo.getId();
	}
	 /* orderDAO dao = new orderDAO();
	 ArrayList<orderVO> list = dao.getCancelList(); */
  %>
  <%if(svo != null) {%>
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
				/* $("#duration_btn1").click(function(){
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
				}); */
				
				uploadTable(4);
				
				$("#duration_btn1").click(function(){
					changeColor(1);
					uploadTable(1);
				})
				$("#duration_btn2").click(function(){
					changeColor(2);
					uploadTable(2);
					
				})
				$("#duration_btn3").click(function(){
					changeColor(3);
					uploadTable(3);
					
				})
				$("#duration_btn4").click(function(){
					changeColor(4);
					uploadTable(0);
				})
				
				
				
				
				
				function uploadTable(num){
					$.ajax({
						url:"search_order_cancelAjax.jsp?mid=<%=mid%>"+"&period="+num,
						success:function(data){
							
							var jdata = JSON.parse(data);
							var output="";
							if(jdata.jlist == ""){
								$("table.order_table tr.otable_header").remove();
								output+="<tr class='all'><td colspan='5' >취소내역이 없습니다.</td></tr>";
								$("table.order_table tbody").after(output);
							}else{
							for(var i in jdata.jlist){
								
								output+="<tr class='all'>"
								output+="<td>"+jdata.jlist[i].oid+"</td>";
								output+="<td>"+jdata.jlist[i].name+"</td>";
								output+="<td>"+jdata.jlist[i].price+"</td>";
								output+="<td>"+jdata.jlist[i].date+"</td>";
								output+="</tr>"							
						   		
							}
							$("table.order_table tbody tr.all").remove();
							$("table.order_table tr.otable_header").after(output);
							}
							
							
							
							
						}
					
						
					})
				}
				
		
				function changeColor(num){
					$("#duration_btn"+num).css("border","1px solid rgb(200, 10, 30)");
					if(num ==1){
						$("#duration_btn2,#duration_btn3,#duration_btn4").css("border","1px solid lightgray");
					}else if(num ==2){			
						$("#duration_btn1,#duration_btn3,#duration_btn4").css("border","1px solid lightgray");
					}else if(num ==3){
						$("#duration_btn1,#duration_btn2,#duration_btn4").css("border","1px solid lightgray");
					}else if(num ==4){
						$("#duration_btn1,#duration_btn2,#duration_btn3").css("border","1px solid lightgray");
					}
				}
				
				
			});
		</script>
	</head>
	<body>
		
	<jsp:include page="../header.jsp" />
	
	<div class="content">
		<jsp:include page="../sideMenuBar.jsp"/>
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
			<button type="button" id="duration_btn1">1일</button>
			<button type="button" id="duration_btn2">2일</button>
			<button type="button" id="duration_btn3">7일</button>
			<button type="button" id="duration_btn4">전체</button>
			<table class="order_table">
					<tbody >
 						
							<tr class="otable_header">
								<th>주문번호</th>
								<th>상품명</th>
								<th>총 가격</th>
								<th>취소날짜</th>
							<tr>
							
 						
					</tbody>
				</table>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp" />
	</body>
</html>
<%}else {%>
<%out.println("<script>alert('로그인 후 사용가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 