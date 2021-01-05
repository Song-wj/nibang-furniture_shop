<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String mid ="";
	if(svo != null){
		 mid = svo.getId();
	}
%>
<%if(svo != null) {%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>리뷰 관리</title>
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
		<script>
		function r_change1(){
			
			var str="";
			str+="<tr>";
			str+="<td>주문번호/주문일</td>";
			str+="<td>상품정보</td>";
			str+="<td>상품평작성</td>";
			str+="</tr>";
			str+="<tr>";
			str+="<td colspan='3' rowspan='3'>구매 내역이 없습니다.</td>";
			str+="</tr>";
			
			document.getElementById("review_table").innerHTML=str;
			
			document.getElementById("btn1").style.border ="1px solid rgb(200,10,30)";
			document.getElementById("btn2").style.border="1px solid black"; 
		}
		
		function r_change2(){
				
			var str="";
			str+="<tr>";
			str+="<td colspan='3' style='padding-right:140px;'>상품정보</td>";			
			str+="</tr>";
			str+="<tr>";
			str+="<td colspan='3' rowspan='3'>리뷰 내역이 없습니다.</td>";
			str+="</tr>";
			
			document.getElementById("review_table").innerHTML=str;
			document.getElementById("btn1").style.border ="1px solid black";
			document.getElementById("btn2").style.border ="1px solid rgb(200,10,30)";
			document.getElementById("btn1").style.borderRight ="1px solid rgb(200,10,30)";
			
			
			}
		</script>
	</head>
	<body>
		<jsp:include page="../header.jsp" />
		<div class="content">
		<jsp:include page="../sideMenuBar.jsp"/>
		<div class="my_review">
			<div>상품평 관리</div>
			<table class="r_btn" >
				<tr>
					<td id="btn1"><button type="button" onclick="r_change1()" >작성 가능한 상품평</button></td>
					<td id="btn2"><button type="button" onclick="r_change2()" >작성한 상품평</button></td>
				</tr>
			</table>
			<div>*상품과 무관하거나 오해의 소지가 있는 내용의 상품평은 통보 없이 삭제될 수 있습니다.</div>
			<div>게시물에 대한 상업적/비상업적 권리는 일룸에 귀속됩니다.</div>	
			<div id="change_table">
			<table	class="review_table" id="review_table">
				<tr>
					<td >주문번호/주문일</td>
					<td >상품정보</td>
					<td >상품평작성</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="4">구매 내역이 없습니다.</td>
				</tr>
			</table>
			</div>
		</div>
		
		
		</div>		
		<jsp:include page="../footer.jsp" />
		
	</body>
</html>
<%}else {%>
<%out.println("<script>alert('로그인 후 사용가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>");} %> 