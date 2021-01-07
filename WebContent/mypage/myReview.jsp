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
	/* String mid = request.getParameter("id"); */
	reviewDAO dao = new reviewDAO();
	orderDAO odao = new orderDAO();
	ArrayList<reviewVO> list = dao.getreviewList(mid);
	ArrayList<orderVO> olist = odao.getOrderReviewList(mid);
	
	String good = "👍";
	
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

			  $(document).ready(function(){
			         
			         $("#btn_r2").click(function(){      
			            if($("#change_table2").css("display") == "none"){            
			               $("#change_table2").css("display","block");
			               $("#change_table1").css("display","none");
			               $("#btn2").css("border","1px solid rgb(200,10,30)");
			               $("#btn1").css("border","1px solid black").css("border-right","1px solid rgb(200,10,30)");
			            }else{
			               $("#change_table2").css("display","block");
			               $("#btn2").css("border","1px solid rgb(200,10,30)");
			               $("#btn1").css("border","1px solid black");
			            } 
			         });
			         
			         $("#btn_r1").click(function(){      
			            if($("#change_table1").css("display") == "none"){            
			               $("#change_table2").css("display","none");
			               $("#change_table1").css("display","block");
			               $("#btn1").css("border","1px solid rgb(200,10,30)");
			               $("#btn2").css("border","1px solid black");
			            }
			         });
			 	
			 });
			  
			 function reviewUpdate(oid) {
				 $.ajax({
					url : 'reviewChkUpdateProc.jsp?oid='+oid,
					success: function(result){
						if(result) {
							console.log("reviewChkUpdate success");
						} else {
							console.log("fail!@");
						}
					}
				 });
			 }
			 
			/* function deleteReview(rid) {
			var doDelete = confirm("정말로 삭제하시겠습니까?");
				if(doDelete) {
					$.ajax({
						url : 'reviewDeleteProc.jsp?rid='+rid,
						success: function(result){
							if(result) {
								console.log("reviewDelete success");
							} else {
								console.log("fail!@");
							}
						}
					 });
					alert("삭제가 완료되었습니다.");
					location.reload();
					
					
				} else {
					alert("삭제를 취소했습니다.");
				}
			} */
			
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
					<td id="btn1"><button type="button"  id="btn_r1" >작성 가능한 상품평</button></td>
					<td id="btn2"><button type="button"  id="btn_r2">작성한 상품평</button></td>
				</tr>
			</table>
			<div>*상품과 무관하거나 오해의 소지가 있는 내용의 상품평은 통보 없이 삭제될 수 있습니다.</div>
			<div>게시물에 대한 상업적/비상업적 권리는 일룸에 귀속됩니다.</div>	
			<div id="change_table1">
			 <table class="review_table" id="review_table">
               <tr>
                  <td>주문번호</td>
                  <td>상품</td>
                  <td>상품명</td>
                  <td>상품정보</td>
                  <td>상품평작성</td>
               </tr>
               <% if(olist.size()== 0){ %>
               <tr>
                  <td colspan="5" rowspan="2">작성 가능 상품이 없습니다.</td>
               </tr>
               <% }else{%>
              
                <% for(orderVO vo :olist){ %>
                <tr>
                  <td><%= vo.getOid() %></td>
                  <td><img style="width:140px; height:100px;" src ="../upload/<%= vo.getSimg() %>"></td>
                  <td><%= vo.getPname() %></td>
                  <td><%= vo.getPinfo() %></td>
                  <td><button type=button id="reviewBtn" onclick="location.href='http://localhost:9000/sist_project_2/mypage/review_insert.jsp?oid=<%=vo.getOid()%>&id=<%=mid%>'; reviewUpdate('<%= vo.getOid()%>'); ">리뷰</button></td>              
                </tr>   
                  <%} %>
               <%} %>
         
            </table>

			</div>
			<div id="change_table2" style="display:none;">
            <table   class="review_table2" id="review_table2">
               <tr>
                  <td>번호</td>
                  <td>상품 이미지</td>
                  <td>제목</td>
                  <td>내용</td>
                  <td>만족도</td>
                  <td>수정</td>
               </tr>
            <% if( list.size() == 0){ %>
               <tr>
                  <td colspan="6" rowspan="2">리뷰 내역이 없습니다.</td>
               </tr>
            <% }else{%>
               <% for(reviewVO vo : list){ %>
               <tr>
                  <td><%=vo.getRid() %></td>
                  <td>
                   <%if(vo.getR_file() !=null) {%>
                   		<img style="width:140px; height:100px;" src="../upload/<%=vo.getR_file() %>">
                  <%} else{%>
                   		<img style="width:140px; height:100px;" src ="../images/no_Image.png">
                  <%} %>
                  </td>
                  <td><%=vo.getR_title() %></td>
                  <td><%=vo.getR_content() %></td>
                  <td><% for(int i=0; i<Integer.parseInt(vo.getR_satis()); i++ ) { out.write(good+" "); }%></td> 
                  <td><button type="button" onclick="location.href='http://localhost:9000/sist_project_2/mypage/review_update.jsp?rid=<%=vo.getRid()%>&id=<%=mid%>&oid=<%=vo.getOid()%>'">수정</button>
                              <%-- &nbsp;<button type="button" onclick="deleteReview('<%=vo.getRid()%>')">삭제</button></td> --%>
               </tr>   
               <% } %>
            <% } %>
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