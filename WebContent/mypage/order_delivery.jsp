<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*, java.util.*"
    %>
<%
	String oid = request.getParameter("oid");
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String mid ="";
	if(svo != null){
		 mid = svo.getId();
	}
	/* orderDAO dao = new orderDAO();
	ArrayList<orderVO> list = dao.getOrderList(mid); */
%>
<%if(svo != null) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>주문 조회</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
    }
	
</style>
<script>
				
	
$(document).ready(function(){
	
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
		uploadTable(4);
	})

	function cancel(oid){
			
			alert("정말 취소하시겠습니까?");
			location.href="search_order_cancelProc.jsp?oid="+oid+"&mid=<%=mid%>" ;
		}
	

	function uploadTable(num){
		$.ajax({
			url:"order_deliveryAjax.jsp?mid=<%=mid%>"+"&period="+num,
			success:function(data){
				
				var jdata = JSON.parse(data);
				var output="";
				if(jdata.jlist == ""){
					$("table.order_table tr.otable_header").remove();
					output+="<tr class='all'><td colspan='5' >주문내역이 없습니다.</td></tr>";
					$("table.order_table tbody").after(output);
				}else{
				for(var i in jdata.jlist){
					
					output+="<tr class='all'>"
					output+="<td>"+jdata.jlist[i].oid+"</td>";
					output+="<td>"+jdata.jlist[i].name+"</td>";
					output+="<td>"+jdata.jlist[i].price+"</td>";
					output+="<td>"+jdata.jlist[i].date+"</td>";
					output+="<td><button type='button' id='"+jdata.jlist[i].oid+"' class='cancel'>취소</button></td>";
					output+="</tr>"
					
			   		
				}
				
				$("table.order_table tbody tr.all").remove();
				$("table.order_table tr.otable_header").after(output);
				}
				
				
				
				$("button.cancel").click(function(){
					   var oid = $(this).attr("id");
					   cancel(oid);
					});
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
			<div class="search_order">
				<div class="title">주문 조회</div>
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
					<button type="button" id="duration_btn1">1일</button>
					<button type="button" id="duration_btn2">2일</button>
					<button type="button" id="duration_btn3">7일</button>
					<button type="button" id="duration_btn4">전체</button>
				</div>
				<div style="margin:40px; text-align:center;">
						<span style="color:#aaa; font-size: 16px; ">최대 3년 이내 주문내역만 조회하실 수 있습니다.</span>
				</div>
				<table class="order_table">
					<tbody>
 						<%-- <% if(list.size() == 0) {%>
							<tr>
								<td class="nolist">주문내역이 없습니다.</td>
							</tr>
						<% } else { %>  --%>
							<tr class="otable_header">
								<th>주문번호</th>
								<th>상품명</th>
								<th>총 가격</th>
								<th>주문날짜</th>
								<th>주문취소</th>
							<tr>
							
 						<%-- <% } %>  --%>
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