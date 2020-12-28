<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*, java.util.* "
    %>
<%
	/* String id = request.getParameter("id");  */
	String mid = "jy@naver.com";
	messageDAO dao = new messageDAO();

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
		} else {
			$("#"+sid+" div").css('display','none');
			$("#"+sid+" div").slideUp('fast');
		}   
	} 
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
										<a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp?mid=<%=mid%>#open"><button type="button" class="inquiry_btn">1:1문의하기</button></a>
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
								<td class="">배송/시공</td>
								<td style="width:53px">
									<span class="cNum"><%=listDelivery_cnt %></span>
								</td>
								<td class="">교환/반품/환불</td>
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
						<button type="button" class="duration_btn1">1개월</button>
						<button type="button" class="duration_btn2">3개월</button>
						<button type="button" class="duration_btn3">6개월</button>
						<button type="button" class="duration_btn4">전체</button>
					</div>
					<p style="text-align:center; color: #aaaaaa;
							 margin:40px;	font-size: 15px;">
						최대 3년 이내 주문내역만 조회하실 수 있습니다.</p>
				</div>
				<div class="body2" style="margin-bottom: 100px;">
					<div>
						<table  style="width:100%">
							<tbody>
								<tr class="noto" style="border:1px solid lightgray">
									<td>문의번호</td>
									<td style="width:150px;">구분</td>
									<td style="width:400px;">제목</td>
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
											<a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiryUpdate.jsp?sid=<%=vo.getSid()%>#open"><button type="button" style="margin-left:652px;">수정</button></a>
	                           				<a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiryDelete.jsp?sid=<%=vo.getSid()%>"><button type="button" style="margin-left:-10px;">삭제</button></a>
					    					<p id="faq_content_detail"><%= vo.getM_content().replace("\r\n", "<br><br>") %></p>										
											<!-- <a href="#open"><button type="button" style="margin-left:650px;">수정</button></a> -->
												<%-- <div class="white_content" id="open">
													<div class="inquiry_content2"  id="inquiry_content2">
														<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
														<h3>문의 수정</h3>
														<form name="inquiryform1" action="1-1inquiryUpdateProc.jsp" method="post" class="inquiryform1" enctype="multipart/form-data">
															<input type="hidden" name="sid" value="<%=vo.getSid()%>"> 
																<ul>
																	<li>
																		<label>문의구분</label>
																		<select name="m_div" id="m_div">
															  				<option value="<%=vo.getM_div()%>"><%=vo.getM_div()%></option>
															  				<option value="선택">선택</option>
															  				<option value="상품문의">상품문의</option>
															  				<option value="주문/결제/취소">주문/결제/취소</option>
															  				<option value="배송">배송</option>
															  				<option value="교환/반품">교환/반품</option>
															  				<option value="회원정보">회원정보</option>
															  				<option value="사이트이용">사이트이용</option>
															  				<option value="이벤트/프로모션">이벤트/프로모션</option>
															  				<option value="기타문의">기타문의</option>
																		</select>
																	</li>
																	<li>제목</li>
																	<li><input type="text" name="m_title" id="m_title" value="<%=vo.getM_title()%>"></li>
																	<li>상세 내용</li>
																	<li><textarea name="m_content" id="m_content"><%=vo.getM_content()%></textarea></li>
																	<li>	
																		<% if(vo.getM_file() != null){ %>
																			<input type="file" name="m_file"><span id="fname"><%=vo.getM_file() %></span>
																		<% }else{ %>
																			<input type="file" name="m_file"><span id="fname">선택된 파일 없음</span>
																		<% } %>
																	</li>
																	<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
																	<li>최대 5개 파일 업로드 가능</li>				
																	<a href="http://localhost:9000/sist_project_2/mypage/1-1inquiryUpdateProc.jsp?id=<%=vo.getMid()%>"><button type="submit" style="color:white; text-decoration:none;">수정완료</button></a>
																</ul> --%>
														</form>
													</div>        
												</div>
											</div>
										</div>
									</td>
					    		</tr>
                        		<% } %>
                        	<% }else{ %>
								<td colspan="4" style="color:#aaa;font-size:18px;padding-top:100px;">조회 결과가 없습니다.</td>
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