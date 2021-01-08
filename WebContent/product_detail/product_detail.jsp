<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
    
    <%	
   	    SessionVO svo = (SessionVO)session.getAttribute("svo");	
  		String mid="";
        if(svo != null){
    		mid = svo.getId();
  		}
    	String pid = request.getParameter("pid");
    	productDAO dao = new productDAO();
    	productVO vo = dao.getData(pid);
 		
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>일룸</title>
</head>
<style>
	#product_payInfo .add {
		margin: 10px 0px;
  		width: 230px;
  	  	float: left;
  	  	font-size: 13px;
  	  	line-height: 17px;
  	  	display: block;
	}
	
	#optionCtn {
		margin-top: 15px; 
   		float: left;
    	width: 85px;
	}
	#optionCtn .cnt{
   		float: left;
   		padding: 3px 7px;
		border: solid 1px #aaaaaa;
	}
	
	#optionCtn .downBtn {
		all:unset;
		float: left;
		border-top: solid 1px #aaaaaa;
		border-bottom: solid 1px #aaaaaa;
		border-left: solid 1px #aaaaaa;
		padding: 4px 4px 5px 4px;
		text-align: center;
		font-size: 14px;
		color: #aaaaaa;
		font-weight: bold;
	}
	
	#optionCtn .upBtn {
		all:unset;
		float: left;
		border-top: solid 1px #aaaaaa;
		border-bottom: solid 1px #aaaaaa;
		border-right: solid 1px #aaaaaa;
		padding: 4px 4px 5px 4px;
		text-align: center;
		font-size: 14px;
		color: #aaaaaa;
		font-weight: bold;
	}
	
	 #opPrice {
		font-size: 14px;
   		color: #c80a1e;
    	margin: 16px 15px 0px 0px;
    	width: 85px;
    	line-height: 20px;
    	float: left;
    	text-align: right;
	}
	
	#total_price {
		margin-top:30px;
		width:460px;
	} 
		
	#opDelete {
	    background-color: white;
	    width: 20px;
	    height: 20px;
	    margin-top: 16px;
	    margin-left: 30px;
	    border: none;	
	    font-size: 13px;
	    text-align: center;
	}
	#opDelete:focus {
		outline: none;
	}
	
	.review1 h1 {
		display: inline-block;
		margin: 10% 20% 3% 35%; 
	}	 	
	.review1 form ul {
		list-style:none;
	}
	.review1 form ul li:first-child,
	.review1 form ul li:nth-child(3),
	.review1 form ul li:nth-child(5){
		font-size: 18px;
		text-align:center;
		display:inline-block;
	}
	.review1 form ul li:nth-child(6){
		margin:20px 0 30px 5px;
		font-size:18px;
	}
	.review1 form ul li input[type="text"],
	.review1 form ul li textarea {
		width: 400px;
		height: 40px;
	}
	.review1 form ul li textarea {
		height: 150px;
	}
	.review1 #btn_close {
		margin-left:450px;
	}
	.review1 #btn_review {
		margin: 5px 0 0 150px;
		background-color: rgb(200, 10, 30);
		border: 1px solid rgb(200, 10, 30);
		color: white;
		width: 200px;
		height: 50px;
	}
	.review1 #btn_review:hover {
		background-color: rgb(160, 14, 43);
	}	
	.product_detail table#rtable{
		
		
	}
	
</style>
<script>
	function img_change(img_id){
		var name = document.getElementById(img_id).getAttribute("src");
		
		if(name =="../upload/<%= vo.getSimg1() %>" ){
			document.getElementById("change").src ="../upload/<%= vo.getSimg1() %>";
		}else if (name == "../upload/<%= vo.getSimg2() %>"){
			document.getElementById("change").src ="../upload/<%= vo.getSimg2() %>";
		}
	}
	
	
	$(document).ready(function(){
		loadReview('최근 리뷰순');
		
		$("#product_colors").change(function(){		
			var price = "<%= vo.getPprice()%>";	
			if($("#product_colors option:selected").val() != "선택"){				
				$("#total_price span").text(price+"원"); 
				//$("#total_price").css("margin-left","300px");		
				$(".add_content").css("display","block");
			} else {
				$("#total_price span").text("0원"); 
				//$("#total_price").css("margin-left","354px");
			}
		});
		
		const price = parseInt($("#opPrice").text().replace(/ /gi,"").replace(/,/gi,""));
		let cnt = 1;
		let total = 0;
		
		$(".downBtn").click(function(){
			if(cnt == 1) {
				alert("최소 주문수량은 1개 이상입니다.");
				return;
			} else {
				cnt = cnt - 1;
				$(".cnt").text(cnt);
				total = price * cnt;
				$("#opPrice").text(comma(total+" 원"));
				$("#total_price span").text(comma(total+" 원"));
			}
		});
		
		$(".upBtn").click(function(){
			cnt = cnt + 1;
			$(".cnt").text(cnt);
			total = price * cnt;
			$("#opPrice").text(comma(total+" 원"));
				$("#total_price span").text(comma(total+" 원"));
		});
		
		$("#opDelete").click(function(){
			$(".add_content").css("display","none");	
			triggerChange();
			cnt = 1;
			$(".cnt").text(cnt);
			total = price * cnt;
			$("#opPrice").text(comma(total+" 원"));
			$("#total_price span").text("0원");
		});
		
		$("#payBtn").click(function(){
			if($("#product_colors option:selected").val() == "선택"){	
				alert("주문 옵션을 선택해주세요.");
				return;
			} else {
				<%if(mid !="") {%>
				alert("주문확인 페이지로 이동합니다.");		
				location.href='http://localhost:9000/sist_project_2/cart/order_form.jsp?pid=<%= vo.getPid()%>&id=<%=mid%>&cnt='+cnt;
				<%}else {%>
				alert("로그인 해주세요!");
				<%}%>
			}
		});
		
		$("#cartBtn").click(function(){
			if($("#product_colors option:selected").val() == "선택"){	
				alert("장바구니에 넣을 옵션을 선택해주세요.");
				return;
			} else {
				<%if(mid !="") {%>
					var info = confirm("장바구니 페이지로 이동할까요?");
					if(info) {
						alert("장바구니 페이지로 이동합니다.");
						location.href='http://localhost:9000/sist_project_2/cart/cartProc.jsp?pid=<%= vo.getPid()%>&id=<%=mid%>&cnt='+cnt;
					} else {
						$.ajax({
							url : 'http://localhost:9000/sist_project_2/cart/cartProc.jsp?pid=<%= vo.getPid()%>&id=<%=mid%>&cnt='+cnt,
							success : function(result) {
								if(result) {
									alert("장바구니에 상품이 등록되었습니다.");
								} else {
									alert("장바구니에 상품이 등록되지 않았습니다.")
								}
							}
						});
					}
				<%}else {%>
				alert("로그인 해주세요!");
				<%}%>
			}
            
         });

			$("#a").click(function(){
				if($("#m_div").val() == "선택"){
					alert("문의 구분을 선택해주세요");
					$("#m_div").focus();
					return false;
				}else if($("#m_title").val() == ""){
					alert("제목을 입력해주세요");
					$("#m_title").focus();
					return false;
				}else if($("#m_content").val() == ""){
					alert("내용을 입력해주세요");
					$("#m_content").focus();
					return false;
				}else{
					inquiryform1.submit();
				}
				
		});
		
		$("#btn_review").click(function(){
			if($("#r_title").val() == ""){
				alert("제목을 입력해주세요");
				$("#r_title").focus();
				return false;
			} else if($("#r_content").val() == ""){
				alert("내용을 입력해주세요");
				$("#r_content").focus();
				return false;
			}else if($("#r_satis").val() == "선택"){
				alert("만족도를 선택해주세요");
				$("#r_satis").focus();
				return false;
			}else{
				reviewform1.submit();
			}
		});

		$("#btn_close").click(function(){
			$("#inquiryform1").each(function(){
				this.reset();
			});
		});	
		
		$("#product_review_sort").change(function(){
			var select = $(this).val();
			loadReview(select);
		
		})
		
		function loadReview(select){

				
			
			$.ajax({
				url:"product_review_ajax.jsp?pid=<%=pid%>&select="+select,
				async: false,
				success:function(data){
					var jdata = JSON.parse(data);
					var output ="";
					
					if(jdata.jlist!=""){
						
				
					output="<table  style='width:1150px;margin-left:50px;text-align:center;' id='rtable'>";
					output+="<tr>";
					output+="<th>작성자</th>";
					output+="<th>이미지</th>";
					output+="<th>제목</th>";
					output+="<th>내용</th>";
					output+="<th>점수</th>";
					output+="</tr>";
					for(var i in jdata.jlist){
						
						output+="<tr>"
						output+="<td style='width:150px;'>"+jdata.jlist[i].id+"</td>";
						if(jdata.jlist[i].img !=null){
							output+="<td style='width:150px;'><img src='../upload/"+jdata.jlist[i].img+"' width=120px height=120px;></td>";
						}else{
							output+="<td style='width:150px;'><img src='../images/no_Image.png' width=120px height=120px;></td>";
						 }
						output+="<td style='width:200px;'>"+jdata.jlist[i].title+"</td>";
						output+="<td>"+jdata.jlist[i].content+"</td>";
						output+="<td style='width:150px;'>"+jdata.jlist[i].grade+"</td>";
						output+="</tr>"
					}
			 	}else{
					
					output="<table  id='rtable'>";
					output+="<tr>";
					output+="<td style='padding: 100px 500px;'>작성된 상품평이 없습니다.</td>"
					output+="</tr>";
				}  
									 
				   output+="</table>";
				  
				   $("#rtable").remove();
				   $(".ddd").append(output);  
   
				}
			})
		}
		
		
	}); // ready
	function triggerChange(){
	    $("#product_colors").val('선택').trigger('change');
	}
	
    function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }
	
</script>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<div class="product_detail">
		<section class="section1" id="section1_pd">
			<aside class="product_img">
				<div class="productmain_img" id="productmain_img">
					<img src = "../upload/<%= vo.getSimg1() %>" id="change" >
				</div>
				<div class="productmini_img" id="productmini_img">
					<img src = "../upload/<%= vo.getSimg1() %>" id ="change1" onclick = "img_change('change1')">
					<%if( vo.getSimg2() != null ) {%>  
						<img src = "../upload/<%= vo.getSimg2() %>" id ="change2" onclick = "img_change('change2')">
					<% }%>
					<hr>
				</div>
			</aside>
			<div class="product_payInfo" id="product_payInfo" >
				<ul>
					<li class="pname"><%= vo.getPname() %></li>
					<li class="pexplain"><%= vo.getPinfo() %></li>
					<li class="pprice" id="total"><%= vo.getPprice() %>원</li> 				
				  	<li><hr style="margin:20px 0px;"></li>
					<li class="pcode">
						배송기간 <span>약 10일</span> 배송비<span>무료배송</span>
						배송방법 <span>설치배송</span> 제품코드<span> <%= vo.getPid() %></span>
					</li>
					
					<li>
						<select name="product_colors" id="product_colors">
					  		<option value="선택">[필수] 색상을 선택해주세요</option>
					  		<option value="color"><%= vo.getColor() %> <%= vo.getPprice()%>원</option>
					  	</select>
				  	</li>
				  	<li><hr style="margin:20px 0px;"></li>
				  	<li class="add_content" style="display: none;">
				  		<div class="add">
				  			<b>[필수]</b>
			 				&nbsp;&nbsp;
			 				<span style="line-height: 20px"><%=vo.getPinfo() %></span>
			 				<br>
			 				<span style="color:#AAAAAA; line-height:20px;"> 색상 : <%= vo.getColor() %></span>
			  			</div>
			  			<div id="optionCtn">
			  				<button class="downBtn"><</button>
			  				<div class="cnt">1</div>
			  				<button class="upBtn">></button>
			  			</div>
			  			<div id="opPrice"><%= vo.getPprice() %> 원</div>
						<button type="button" id="opDelete">❌</button>
					  	<hr style="margin-top:65px;">
			  		</li>
				  	<li class=total_price>
				  		<div id="total_price">
					  		총 구매가<span style="float:right;"> 0 원</span>
				  		</div>
				  	</li>
				  	<li class="btn_productPay">
				  		<button type="button" id="payBtn">결제하기</button>
				  		<button type="button" id="cartBtn">장바구니</button>
				  		<a href="" class="wish"></a>
				  	</li>
					<li class="btn_Events" id="btn_Events">
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_myilloomlifebtn.jpg"></a> 
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_eventbtn.jpg"></a> 
						<a href=""><img src="http://localhost:9000/sist_project_2/images/pd_promotionbtn.jpg"></a> 			
					</li>
				</ul>
			</div>
		</section> 
		<section class="section2" id="section2_pd">
			<div class="product_detail_info" id="product_detail_info">
				<label>상품필수정보</label>
				<div class="detail_info1">
					<ul>
						<li>제품명</li>
						<li>모델명</li>
						<li>크기(mm)/중량(kg)</li>
						<li>색상</li>
						<li>구성품</li>
						<li>주요 소재/재질</li>
						<li>사용연령 또는 체중범위</li>
						<li>동일모델의 출시년월</li>
					</ul>
				</div>
				<div class="detail_info2">
					<ul>
						<li>가구</li>
						<li>아이템별 맞춤수납-부띠끄형PKG</li>
						<li>*상세페이지 참조</li>
						<li>CGYA/GYA</li>
						<li>*상세페이지 참조</li>
						<li>*상세페이지 참조</li>
						<li>해당사항없음</li>
						<li>해당사항없음</li>
					</ul>
				</div>
				<div class="detail_info3">
					<ul>
						<li>제조자/제조국</li>
						<li>판매자/수입자</li>
						<li>취급방법 및 취급시 주의사항/<br>안전표시(주의,경고 등)</li>  
						<li>배송/설치비용</li>  
						<li><br>품질보증기준<br></li>  
						<li>AS/책임자와 전화번호</li>  
						<li>KC인증</li>  
					</ul>
				</div>
				<div class="detail_info4">
					<ul>
						<li>일룸OEM/대한민국</li>
						<li>(주)일룸/(주)일룸></li>
						<li>*상세페이지 참조<br><br></li>
						<li>무료배송(단,도서산간지역 제외)</li>
						<li>소비자분쟁해결기준에 따라 1년 무상A/S<br>(단,보증기간 내라도 고객 귀책 사유일 경우 제외)</li>
						<li>일룸 고객센터 1577-5670</li>
						<li><img src="http://localhost:9000/sist_project_2/images/KC.png"></li>
					</ul>
				</div>
			</div>
		</section>
		<section class="section3_product_img" id="section3_product_img">
			<div class="product_closet_img" id="product_closet_img">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트1.jpg">
				<label>*상기 이미지는 슬라이딩 도어 사양으로 매장에서 구매 가능합니다.<br><br><br></label>
				<p>	 
					이벤트 기간 동안 옷장 2700폭 이상(도어 포함) 구매 시 <br>
					옷장 조명 3개 + 패브릭 박스 2개(156,000원 상당) 증정 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트2.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트3.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트4.jpg">
				<p class="explain_title">컬렉트 시리즈</p>
				<p>
					고급스러우면서도 견고한 느낌의 프리미엄 옷장, 컬렉트 시리즈입니다. <br>
					컬렉트 옷장 시스템으로 차별화된 사용성을 경험해보세요. 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트5.jpg">
				<p class="explain_title">다양한 내부 구성</p>
				<p>
					다양한 내부 구획 및 옵션을 갖추고 있어 옷장 사용 패턴에 맞는 수납 구성이 가능합니다.  
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트6.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트7.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트8.jpg">
				<p class="explain_title">아이템별 맞춤 수납 - 부띠끄형 PKG</p>
				<p>
					의류 및 패션아이템 특성에 맞춰 다양하게 수납할 수 있는 구성입니다.
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트9.jpg">
				<br><br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트10.jpg" id="img10">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트11.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트12.jpg" id="img12">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트13.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트14.jpg" id="img14">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트15.jpg" id="img15">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트16.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트17.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트18.jpg" >
				<img src="http://localhost:9000/sist_project_2/images/컬렉트19.jpg" id="img19">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트20-1.jpg" id="img20-1">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트20-2.jpg" id="img20-2">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트21.jpg">
				<hr>
				
				<p class="explain_title">Color</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트22.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트23.jpg">
				
				<p class="explain_title">Size & Mataterial</p>
				<p><span class="red">Size</span></p>
				<p><span>1000*590*2176</span></p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트24.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트25.jpg">
				<p><span class="red">Material</span></p>
				<p><span>몸통 15T,22T PB+LPM+ABS엣지<br>뒤판/속서랍밑판 4.5t MDF+FF<br>서랍앞판 18t PB+LPM+ABS엣지<br>
					   서랍손잡이 알루미늄+분체도장<br>옷걸이봉 알루미늄 압출(아노다이징)<br>도어 18T PB+ASA/LPM(STONE질감)<br>
					손잡이 알루미늄 압출(XX:아노다이징, GY:분체도장)
				</span></p>
				<hr>
				
				<p class="interiorTIP">INTERIOR TIP</p>
				<p class="explain_title">컬렉트 시리즈 구성 둘러보기</p>				
				<p>
					900/1000폭, 450/500폭까지, 필요한 사이즈에 맞게 구성할 수 있습니다. 
				</p>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트26.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트27.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트28.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트29-1.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트29-2.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트30.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트31.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트32.jpg">
				<br><br>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트33.jpg">
				<hr>
				<img src="http://localhost:9000/sist_project_2/images/컬렉트34.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트35.jpg">
				
				<p class="explain_title">다양한 도어와 매칭 가능</p>				
				<p>
					일룸의 다양한 옷장 도어와 매칭하여 <br>우리집 스타일에 딱 맞는 옷장 구성을 만들어 보세요. 
				</p>
				
				<img src="http://localhost:9000/sist_project_2/images/컬렉트36.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트37.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트38.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트39.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트40.jpg">
				<img src="http://localhost:9000/sist_project_2/images/컬렉트41.jpg">
				<br><br><br>
				<p>
					매장에서 나에게 맞는 옷장 구성을 상담받아 보세요.
				</p>
			</div>
		</section>
		<section class="section4_product_notice" id="section4_product_notice">
			<div class="product_review_QnA" id="product_review_QnA">
				<label>포토 상품평</label>
				<label class="btnNselect">
					<%-- <a href="#open"><button type="button">리뷰등록</button></a>
						<div class="white_content" id="open">
							<div class ="review1" style="width:45%;">
								<a href="#close"><img id="btn_close" src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
								<h1>상품평</h1>
									<form id="reviewform1" name="reviewform1" action="reviewProc.jsp?id=<%=svo.getId() %>" method="post" enctype="multipart/form-data">
										<input type="text" name="pid" value="<%=pid%>"> 
										<input type="text" name="mid" value="<%=svo.getId()%>"> 
											<ul>
												<li>제목</li>
												<li><input type="text" name="r_title" id="r_title"></li>
												<li>내용을 작성해주세요</li>
												<li><textarea name="r_content" id="r_content"></textarea></li>
												<li>만족도
													<select name="r_satis" id="r_satis" style="margin-left:30px;">
														<option value="선택">선택</option>
														<option value="1">👍</option>
														<option value="2">👍👍</option>
														<option value="3">👍👍👍</option>
														<option value="4">👍👍👍👍</option>
														<option value="5">👍👍👍👍👍</option>
													</select>
												</li>
												<li><input type="file" name="r_file" id="r_file"></li>
												<li>
													<button type="submit" id="btn_review">작성 완료</button>
												</li>
											</ul>
										</form>
									</div>		
							</div>
						 --%>
				</label>
					<select name="product_review_sort" id="product_review_sort">
						<option value="최근 리뷰순"> 최근 리뷰순</option>
						<option value="평점 높은순"> 평점 높은순</option>
						<option value="평점 낮은순"> 평점 낮은순</option>
					</select>
				<hr>
				<div class ="ddd">
				<table class="rtable" id="rtable">
					<tr>
						<td style="padding: 100px 500px;">작성된 상품평이 없습니다.</td>
					</tr>
				</table>
				</div>
				<hr>
				
				<label>상품 Q&A <span class="qna">상품에 관한 문의가 아닌 경우 고객센터를 이용해주세요.</span></label>
						<a href="#open"><button type="button">문의하기</button></a>
						<div class="white_content4" id="open">
							<div class="inquiry_content1"  id="inquiry_content1">
									<a href="#close"><img id="btn_close" src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
										<h2 style=" margin-left:70px; padding: 6% 20%;">문 의</h2>
											<form name="inquiryform1" action="http://localhost:9000/sist_project_2/customer_service/1-1inquiryProc.jsp" method="post" id="inquiryform1" class="inquiryform1" enctype="multipart/form-data">
												<input type="hidden" name="mid" value="<%=mid%>"> 
												<ul>
													<li><label style="font-size:14px; margin: 20px 20px 0 0; ">문의구분</label>
														<select name="m_div" id="m_div" style="width:250px;height:40px;">
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
													<li><input type="text" name="m_title" id="m_title"></li>
													<li>상세 내용</li>
													<li><textarea name="m_content" id="m_content"></textarea></li>
													<li><input type="file" name="m_file" id="m_file"></li>
													<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
												</ul>
													<button type="submit" id="a">신청하기</button>
											</form>
										</div>        
									</div>
						<a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp"><button type="button">고객센터</button></a>
				
				
				<hr>
				<table class="product_Q&A" id="product_Q&A">
					<tr>
						<td>상품 Q&A 내역이 없습니다.</td>
					</tr>
				</table>
				<hr>
			</div>
			<div class="product_img_notice" id="product_img_notice">
				<label>제품 사진 관련 안내</label>
				<hr>
				<label class="product_img_notice">
					위의 사진들은 모니터에 따라 약간의 색상 차이가 발생될 수 있습니다. 해당 제품은 지속적인 개선을 위하여 예고 없이 사양이 변경될 수 있습니다.
				</label>
			</div>
			<div class="product_delivery_notice" id="product_delivery_notice">
				<label>배송 안내</label>
				<hr>
				<div class="delivery1">
					<p>
						일룸에서는 배송예약 시스템을 운영하고 있습니다.<br>
						일룸 제품은 주문제작 상품으로 배송까지 7~10일이 소요되며,<br>
						배송 예약 일정을 변경하고자 하는 경우, 평일 기준 요청일 최소 3일 전에<br>
						공식쇼핑몰 담당자(1577-5670) 에게 연락을 해주셔야 합니다.<br><br>
						단, 주문의 폭주, 천재지변, 배송과정에 차질이 발생한 경우, 고객님께 사전에 배송 지연<br>
						사실을 알려드리며, 상담을 통해 배송 요청일을 다시 조정하실 수 있습니다.<br>
						도서/산간지역은 배송이 다소 늦을 수 있습니다.<br><br>	
						<span class="fontred">설치 당일 설치 현장의 특수성으로 인해 추가적으로 발생하는 비용은 고객님 부담입니다.</span><br><br>
						(엘레베이터 사용료/사다리차 사용료 등)<br><br>
						제주도, 울릉도 지역은 온라인 주문이 불가합니다. 대리점에 직접 방문해주세요.
					</p>					
				</div>
				<div class="delivery2">
					<p>
						<span class="fontred">배송 예약 시스템이란?</span><br><br><br>
						일정이 바쁜 고객님들을 위하여<br>
						상품의 희망 배송일을 예약할 수 있는 서비스를 제공해드리고 있습니다.<br>
						결제일로부터 7일(일부 품목은 10일) 이후부터 지정이 가능합니다.<br><br>	
						지정 후 온라인 담당자나 담당 시공자가 시공 전에<br>
						연락을 드리고 세부일정을 확정하게 됩니다.<br>
						(배송 예약 시스템은 시공 상품에만 해당하며, 택배 상품은<br>
						 배송 희망일과 무관하며 5일정도 소요됩니다.)<br><br><br><br>
					</p>
				</div>
			</div>
			<div class="product_exchangerefund_notice" id="product_exchangerefund_notice">
				<label>교환/환불안내</label>
				<hr>
				<div class="exchangrefund_notice">
					
						<span class ="fontW">교환 및 반품<br><br></span>
						<span class="fontred">가구의 특성상 설치(조립)이 된 후에는 상품 가치가 하락하여<br>
							재판매가 불가능한 상태이므로 교환/반품 기간이라도 교환/반품이 불가합니다.</span><br><br>	
							공정거래위원회 표준 약관에 의거하여 납품 후, 7일 이내에 교환/반품 신청이 가능합니다.<br><br>
						<hr>
						<span class ="fontW">교환 및 반품 가능한 경우 <span class ="fontindent"> 교환 및 반품 불가능한 경우</span></span><br><br>						 
							· 배송된 상품이 주문 내용과 상이한 경우 <span class ="fontindent">  · 상품을 설치(조립)한 경우</span><br>
							· 상품에 오염이나 손상이 있는 경우 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class ="fontindent" > · 고객님의 사용 및 부주의로 인하여</span><br>
							· 상품 자체의 이상 및 결함이 있는 경우&nbsp;&nbsp;&nbsp;<span class ="fontindent">· 상품 가치가 감소한 경우</span><br><br>
						<hr>
					
				</div>
				<div class="order_cancle_notice">
					<p> 
						<span class ="fontW">주문취소<br><br></span>
						결제하신 상품의 주문취소를 원하시면 주문등록 전에는 쇼핑몰에서 직접 취소하실 수 있습니다.<br>
						주문등록 후에는 평일 기준(주말 및 공휴일 제외) 3일 전까지 쇼핑몰 담당자 (1588-6792)에게<br>
						전화로 요청이 가능하며, 배송 준비 또는 배송 중에는 반품비용이 청구됩니다.<br>
						주문 내용 변경을 원하시면 주문 전체를 취소하시고 새로 주문하셔야 하며, 부분 변경이 불가합니다.<br><br>
						<span class ="fontW">환불안내<br><br></span>
						<span class="fontred"></span>소비자 보호 규정에 의거하여 주문의 취소일 혹은 재화 등을 반환받은 날로부터<br>
						영업일 3일 이내에 결제금액을 환불해드립니다.<br><br>
						단, 신용카드 경제 일자에 맞추어 대금이 청구될 경우, 익월 신용카드 대금청구 시 카드사에서<br>
						환급 처리됩니다. 무통장입금의 경우에는 주문의 취소 혹은 제품 회수 후 입금 계좌가 확인되면<br>
						3일 이내에 환불해 드립니다.(토요일, 일요일 및 공휴일은 제외)<br>
					</p>
				</div>
				<div class="exchangrefund_rule">
					
						<span class ="fontW">주문취소 및 교환/반품 비용 규정</span><br><br>
						<table border=1>
							<tr>
								<td>주문취소<br>(납품 전)</td>
								<td>주문후 ~ <br>배송전일</td>
								<td>무상 취소가능</td>
							</tr>
							<tr>
								<td rowspan="2">교환/반품<br>(납품 후)</td>
								<td>7일이내</td>
								<td>박스 개봉 전 or 박스 개봉 후 (조립 설치 전)<br>구매 금액의 10% (50,000원 이하 상품은 5,000원 정액)<br><br>
									제품 조립 설치 후 (상품 가치 하락)<br>교환/반품 불가</td>
							</tr>
							<tr>
								<td>7일이후</td>
								<td>교환/반품 불가</td>
							</tr>
						</table>
					
				</div>
				
			</div>
			<div class="product_precautions" id="product_precautions">
				<div class="precautions">
					<label>제품 사용/관리 주의사항</label>
					<hr><br>				
					<img src="http://localhost:9000/sist_project_2/images/warning_1.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_2.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_3.png">
					<img src="http://localhost:9000/sist_project_2/images/warning_4.png">
					<p id="warning1">
						<br><span>장시간 지속적인 물, 습기, 열 및<br>오염물질 등에 노출될 경우</span><br><br>
						제품 변형의 원인이 될 수 있으므로<br>주의하여 주십시오.<br>
					</p>
					<p id="warning2">
						<br><span>제품의 임의적인 분해 및<br>재조립을 하였을 경우</span><br><br>
						손상 및 파손이 발생하여 사용 기간이<br>단축될 수 있으니 지양해주십시오.<br>
					</p>
					<p id="warning3">
						<br><span>제품에 사람이 올라타거나<br>무거운 것을 올렸을 경우</span><br><br>
						미끄러져 떨어지거나 전복되어 상해를<br>입을 수 있으니 각별히 주의하십시오.<br>
					</p>
					<p id="warning4">
						<br><span>제품을 이동할 경우<br></span><br>
						끌거나 밀지마시고 두 명이 함께 들어<br>수평을 유지한 채 운반하여 주십시오.<br>제품/바닥에 손상을 입힐 수 있습니다.<br>
					</p>
				</div>
					
			</div>
			
			
		</section>	
	</div>
	
	<jsp:include page="../nibangBanner.jsp"/>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>