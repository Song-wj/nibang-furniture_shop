<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*, java.util.* "
    %>
<%

	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String mid ="";
	if(svo != null){
		 mid = svo.getId();
	}

	messageDAO dao = new messageDAO();
	messageAnswerDAO adao = new messageAnswerDAO();
	

	int listAll_cnt = dao.getListCountAll(mid);
	int listProduct_cnt = dao.getListCountProduct(mid);
	int listOrder_cnt = dao.getListCountOrder(mid);
	int listDelivery_cnt = dao.getListCountDelivery(mid);
	int listExchange_cnt = dao.getListCountExchange(mid);
	int listEvent_cnt = dao.getListCountEvent(mid);
	int listEtc_cnt = dao.getListCountEtc(mid);
	int listMember_cnt = dao.getListCountMember(mid);
	int listSite_cnt = dao.getListCountSite(mid);
	
	
	
	ArrayList<messageVO> list =  dao.getInquiryList(mid);
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
<title>1:1문의</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
    }
	.subject {
		text-align: center;
	}
	.subject td:nth-child(1) {
		letter-spacing: -1.5px;
	}
			
	.contents td {
		background-color: #f0f0f0;
	}
	.contents td#faq_content{
		padding:0;
	}
	.contents td p#faq_content_detail {
		text-align: left;
		padding: 60px 95px 60px 95px;
		font-weight: normal;
	}
	div#btn_inquiry_upde button{
		text-decoration:underline;
		color:rgb(200,10,30);
		border:1px solid #f0f0f0;
		font-size:12px;		
		font-weight:600;
		margin-bottom: 10px;
	}
	span#fname {
		display:inline-block;
		width:320px;
		margin-left:-180px; 
		font-size:12px;
		background-color:white;
		padding:2px 0 0 2px;
	}	
	
</style>
<script>
	function slideDown(sid) {
		
		$('.contents div').each(function(){
			if($(this).css('display') == 'block')
				$(this).slideUp('fast');
			
		}); 
		
		if($("#"+sid+" div").css('display') == 'none') {
			$("#"+sid+" div").css('display','block');
			$("#"+sid+" div").slideDown('fast');
			$.ajax({
				url:"1-1answerProc.jsp?sid="+sid,
				success:function(answer){
					var output="";
					output+= "<p style='text-align:left;padding-left:95px;'>"
					output += answer;
					output += "</p>"
					$("#1-1answer").text("");
					$("#1-1answer").append(output);
				}
			})
		} else {
			$("#"+sid+" div").css('display','none');
			$("#"+sid+" div").slideUp('fast');
		}   
	} 
	
	function deleteReview(sid) {
		var doDelete = confirm("정말로 삭제하시겠습니까?");
			if(doDelete) {
				$.ajax({
					url : '1-1inquiryDeleteProc.jsp?sid='+sid,
					success: function(result){
						if(result) {
							console.log("1-1Delete success");
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
		}
	
<%-- $(document).ready(function(){
		
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
				url:"1-1inquiry_ajax.jsp?mid=<%=mid%>"+"&period="+num,
				success:function(data){
					
					var jdata = JSON.parse(data);
					var output="";
					if(jdata.jlist.size==0){
						output+="<tr><td colspna='4'>";
						output+="문의내역이 없습니다.";
						output+="</td></tr>"
					}else{
					for(var i in jdata.jlist){
						
						output+="<tr class='abc' id='"+jdata.jlist[i].sid+"'>"
						output+="<td>"+jdata.jlist[i].sid+"</td>";
						output+="<td>"+jdata.jlist[i].div+"</td>";
						output+="<td>"+jdata.jlist[i].title+"</td>";
						output+="<td>"+jdata.jlist[i].date+"</td>";
						output+="</tr>"
						
				   		
					}
					}
					
					
				    $("table.inquiry_table tbody tr.abc").remove();
					$("table.inquiry_table tr.noto").after(output); 
					
					$(".abc").click(function (){
						var sid = $(".abc").attr("id");
						slideDown(sid);
					})
					
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
		
	}) --%>
</script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="content">
	<jsp:include page="../sideMenuBar.jsp"/>
		<div>
			<div class="right_content">
				<div class="title">1:1문의</div>
				<div class="head">
					<table>
						<tbody>
							<tr>
								<td rowspan="3" style="width:110px; text-align:center;">
									<img 
									src="http://localhost:9000/sist_project_2/images/1on1.png"
									style="padding-bottom: 20px; padding-left: 80px;">
									
									<span style="padding-left: 80px;">
										<a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp?id=<%=mid%>#open"><button type="button" class="inquiry_btn">1:1문의하기</button></a>
									</span>
								</td>
								<td rowspan="3" style="width:110px;"></td>
								<td class="all" onclick="">전체내역</td>
								<td style="width:53px">
									<span class="cNum"><%=listAll_cnt%></span>
								</td>
								<td class="">상품문의</td>
								<td style="width:53px">
									<span class="cNum"><%=listProduct_cnt %></span>
								</td>
								<td class="">주문/결제/취소</td>
								<td style="width:53px">
									<span class="cNum"><%=listOrder_cnt %></span>
								</td>
							</tr>
							<tr>
								<td class="">배송</td>
								<td style="width:53px">
									<span class="cNum"><%=listDelivery_cnt %></span>
								</td>
								<td class="">교환/반품</td>
								<td style="width:53px">
									<span class="cNum"><%=listExchange_cnt %></span>
								</td>
								<td class="">이벤트/프로모션</td>
								<td style="width:53px">
									<span class="cNum"><%=listEvent_cnt %></span>
							</tr>
							<tr>
								<td class="">회원정보</td>
								<td style="width:53px">
									<span class="cNum"><%=listMember_cnt %></span>
								</td>
								<td class="">사이트이용</td>
								<td style="width:53px">
									<span class="cNum"><%=listSite_cnt %></span>
								</td>
								<td class="">기타문의</td>
								<td style="width:53px">
									<span class="cNum"><%=listEtc_cnt %></span>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="body1">
					<div class="duration_btn" style="margin-top: 30px;">
						<button type="button" id="duration_btn1">1일</button>
						<button type="button" id="duration_btn2">2일</button>
						<button type="button" id="duration_btn3">7일</button>
						<button type="button" id="duration_btn4">전체</button>
					</div>
					<p style="text-align:center; color: #aaaaaa;
							 margin:40px;	font-size: 15px;">
						최대 3년 이내 주문내역만 조회하실 수 있습니다.</p>
				</div>
				<div class="body2" style="margin-bottom: 100px;">
					<div>
						<table  style="width:100%" class="inquiry_table">
							<tbody>
								<tr class="noto" style="border:1px solid lightgray">
									<td style="width:100px;">문의번호</td>
									<td style="width:180px;">구분</td>
									<td style="width:380px;">제목</td>
									<td>문의날짜</td>
								</tr>
							 <% if(listAll_cnt != 0){ %>
								<% for(messageVO vo : list){ %>
					    		<tr class="subject" onclick="slideDown('<%= vo.getSid() %>')">  
					    			<td><%= vo.getSid() %></td>
					    			<td><%= vo.getM_div() %></td>
					    			<td><%= vo.getM_title() %></td>
					    			<td><%= vo.getM_date() %></td>
					    		</tr>
					    		<tr class="contents" id="<%=vo.getSid() %>">
					    			<td colspan="4" id="faq_content">
										<div style="display: none;" id="btn_inquiry_upde">
											<a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiryUpdate.jsp?sid=<%=vo.getSid()%>"><button type="button" style="margin-left:652px;">수정</button></a>
	                           				<button type="button" onclick="deleteReview('<%=vo.getSid()%>')" style="margin-left:-10px;">삭제</button>
					    					<p id="faq_content_detail"><%= vo.getM_content().replace("\r\n", "<br><br>") %></p>		
					    					<p id="1-1answer"></p>								
										</div>
									</td>
					    		</tr>
                        		<% } %>
                        	<% }else{ %>
                        		<tr>
								<td colspan="4" style="color:#aaa;font-size:18px;padding-top:100px;">조회 결과가 없습니다.</td>
								</tr>
							<% } %> 
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>
<%}else {%>
<%out.println("<script>alert('로그인 후 사용가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 

