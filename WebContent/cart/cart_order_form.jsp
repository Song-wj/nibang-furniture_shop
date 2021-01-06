<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*, java.text.DecimalFormat"
    %>
<%
   String type = request.getParameter("type"); 
   DecimalFormat formatter = new DecimalFormat("###,###");
   String mid = request.getParameter("id");
   
   productDAO pdao = new productDAO();
   nibangDAO ndao = new nibangDAO();
   cartDAO cdao = new cartDAO();
   ArrayList<cartVO> cartList = cdao.getCart(mid);
   ArrayList<cartVO> displayedCartList = new ArrayList<cartVO>();
   joinVO jvo = ndao.getMemberInfo(mid);
      
   Random rd = new Random();
   String oid = "NIB" + rd.nextInt(100000);
   
    
   if(type.equals("all")){
         displayedCartList = cartList;
         
   }else if(type.equals("selected")){
      String pidListString = request.getParameter("pidList");
      String[] pidList = pidListString.split(","); 
      System.out.println(pidListString);
      ArrayList<cartVO> selectedList = new ArrayList<cartVO>();
      for (cartVO vo : cartList) {
         if(Arrays.asList(pidList).contains((vo.getPid()))){
            selectedList.add(vo);
         }

      }
      displayedCartList = selectedList;
   }
   int totalPrice = 0;
   for(int i = 0; i < displayedCartList.size(); i++){
      totalPrice += (displayedCartList.get(i).getPrice() * displayedCartList.get(i).getC_qty());
   } 
   String parseTotal = formatter.format(totalPrice);

   
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>주문서 작성</title>
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
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
      $(document).ready(function(){
         $("button#btn_pay").click(function (){
            if($("#order_name").val() == ""){
               alert("주문자명을 입력해주세요");
               $("#order_name").focus();
               return false;
            }else if(!phoneCheck()){
               return false;
            }else if($("#order_email").val() == ""){
               alert("이메일을 입력해주세요");
               $("#order_email").focus();
               return false;
            }else if($("#order_email2").val() == ""){
               alert("이메일을 입력해주세요");
               $("#order_email2").focus();
               return false;
            }else if($("#recipient").val() == ""){
               alert("받는 사람의 이름을 입력해주세요");
               $("#recipient").focus();
               return false;
            }else if($("#recipient_addr1").val() == ""){
               alert("우편번호를 입력해주세요");
               $("#recipient_addr1").focus();
               return false;
            }else if($("#recipient_addr2").val() == ""){
               alert("주소를 입력해주세요");
               $("#recipient_addr2").focus();
               return false;
            }else if($("#recipient_addr3").val() == ""){
               alert("상세주소를 입력해주세요");
               $("#recipient_addr3").focus();
               return false;
            }else if($("#recipient_ph1").val() == ""){
               alert("받는 분의 연락처를 입력해주세요");
               $("#recipient_ph1").focus();
               return false;
            }else if($("#recipient_ph2").val() == ""){
               alert("받는 분의 연락처를 입력해주세요");
               $("#recipient_ph2").focus();
               return false;
            }else if($("#recipient_ph3").val() == ""){
               alert("받는 분의 연락처를 입력해주세요");
               $("#recipient_ph3").focus();
               return false;
            }else {
               //서버 주소
               orderForm.submit();
            }
               
         });//btn_pay
         
         
         $("#s_email").change(function(){
            if($("#s_email").val() != "직접입력"){
               $("#order_email2").val($(this).val());
            }else{
               $("#order_email2").val("");
               $("#order_email2").focus();
            }
         });
         
         
         function phoneCheck(){
            var a = $("#order_ph1").val();
            var b = $("#order_ph2").val();
            var c = $("#order_ph3").val();
            var ph = a + "-" + b + "-" +c;
            var phrule = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
            if(a =="" ){
               alert("휴대변호를 입력해주세요");
               $("#order_ph1").focus();
               return false;
            }else if(b =="" ){
               alert("휴대변호를 입력해주세요");
               $("#order_ph2").focus();
               return false;
            }else if(c =="" ){
               alert("휴대변호를 입력해주세요");
               $("#order_ph3").focus();
               return false;   
            }else
               if(phrule.test(ph)){
                  return true;
               }else{
                  alert("휴대번호를 다시 입력해주세요");
                  $("#order_ph1").val("");
                  $("#order_ph2").val("");
                  $("#order_ph3").val("");
                  $("#order_ph1").focus();
                  return false;                  
               }
         }//phoneCheck
         
         
         $("#payBtn_area button:nth-child(2)").click(function(){
            $(this).addClass('button-clicked');
            $("#payBtn_area button:nth-child(3)").removeClass('button-clicked');
            $("#payBtn_area button:nth-child(4)").removeClass('button-clicked');
         });
         $("#payBtn_area button:nth-child(3)").click(function(){
            $(this).addClass('button-clicked');
            $("#payBtn_area button:nth-child(2)").removeClass('button-clicked');
            $("#payBtn_area button:nth-child(4)").removeClass('button-clicked');
         });
         $("#payBtn_area button:nth-child(4)").click(function(){
            $(this).addClass('button-clicked');
            $("#payBtn_area button:nth-child(2)").removeClass('button-clicked');
            $("#payBtn_area button:nth-child(3)").removeClass('button-clicked');
         });
         
         $("#DELIVERY_LIST1").click(function(){
            $("#recipient_addr1").val("<%= jvo.getAddr_num() %>");
            $("#recipient_addr2").val("<%= jvo.getAddr2()%>");
            $("#recipient_addr3").val("<%= jvo.getAddr3()%>");
            $("#recipient_ph1").val("<%= jvo.getPh1()%>");
            $("#recipient_ph2").val("<%= jvo.getPh2()%>");
            $("#recipient_ph3").val("<%= jvo.getPh3()%>");
         });
         
      }); //ready
      
      function goPopup(){
         // 주소검색을 수행할 팝업 페이지를 호출합니다.
         // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
         var pop = window.open("../addr/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
         
         // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
          //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
         }
         function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
            // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
            /* document.form.roadFullAddr.value = roadFullAddr; */
            document.orderForm.recipient_addr1.value = zipNo;
            document.orderForm.recipient_addr2.value = roadAddrPart1;
            document.orderForm.recipient_addr3.value = addrDetail;
            
            document.getElementById("recipient_addr1").style.fontSize = "15px";
             document.getElementById("recipient_addr2").style.fontSize = "12px";
            document.getElementById("recipient_addr3").style.fontSize = "12px";
         
         }
      
</script>
<style>
#payBtn_area button.button-clicked {
    color: white;
    background-color: rgb(99, 102, 106);
}


</style>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div>
      <section class="section1">
         <div class="order_lnb">
            <span>01 장바구니</span><hr>
            <span class="f_red">02 주문서 작성</span><hr>
            <span>03 주문완료</span>
         </div>
         <div id="order_form_content">
         <form name="orderForm" action="orderProc.jsp" method="get" class="order_form">
            <div id="order_form_title" style=" border-bottom: 1px solid white; ">주문서 작성</div>
            <div class="title_2">배송/결제 정보를 정확히 입력해주세요.</div>
            <div class="order_form_sub_title">주문 상품 정보</div>
            <table class="order_product">
               <tr>
                  <th colspan="2">상품정보</th>      
                  <th class="w130">단가</th>      
                  <th class="w130">수량</th>
                  <th class="w130">상품금액</th>         
                  <th class="w100">배송형태</th>         
               </tr>
                <% for (cartVO vo : displayedCartList) {%>
               <tr class="mainProduct">
                  <td>
                     <a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?=<%= vo.getPid()%>">
                        <img src = "../upload/<%= vo.getSimg1() %>" id="change" width='200px' height='200px'>
                     </a>
                  </td>
                  <td class="productInfo">
                     <span class="f_bold"><%= vo.getPname() %></span>
                     <br>
                     <span><%= vo.getPinfo() %></span>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <span style="vertical-align: bottom;">
                        <b>[필수] &nbsp; &nbsp;</b>
                        색상 : 
                        <span><%= vo.getColor() %></span>
                     </span>
                  </td>
                  <td class="mainPrice"><%= formatter.format(vo.getPrice()) %>원</td>
                  <td class="mainQty"><%= vo.getC_qty() %></td>
                  <td class="groupPrice"><%=formatter.format( vo.getPrice() * vo.getC_qty()) %>원</td>
                  <td>-</td>
               </tr>
               <% } %>
            </table>
            <div style="padding:70px 70px;">
               <span>*택배/시공 상품이 별도 배송될 수 있습니다.</span>
               <span class="totalPrice">
               총 상품금액
               <span class="totalPrice"> &nbsp; &nbsp;<%= parseTotal %>원</span>
               </span>   
            </div>
            <div class="order_form_sub_title">주문 정보</div>
            <div id="delivery_info">
               <div id="delivery_info_L">
                  <p class="delivery_info_title">주문자 정보</p>
                  <label>주문자명</label>
                  <input type="text" id="order_name" value="<%= jvo.getName() %>">
                  <label>연락처</label>
                  <input type="text" id="order_ph1" value="<%= jvo.getPh1() %>">
                  <input type="text" id="order_ph2" value="<%= jvo.getPh2() %>">
                  <input type="text" id="order_ph3" value="<%= jvo.getPh3() %>">
                  <label>이메일</label>
                  <input type="text" id="order_email" value="<%= jvo.getEmail1()%>">
                  <input type="text" id="order_email2" value="<%= jvo.getEmail2()%>">
                  <select id ="s_email">
                        <option value="직접입력">직접입력
                        <option value="@naver.com">naver.com
                        <option value="@nate.com">nate.com
                        <option value="@daum.net">daum.net
                        <option value="@hanamil.net">hanamil.net
                        <option value="@gmail.com">gmail.com
                        <option value="@yahoo.co.kr">yahoo.co.kr
                  </select>
               </div>   
               <div id="delivery_info_R">
               <% for (cartVO vo : displayedCartList) {%>
                  <input type="hidden" name="oid" value="<%= oid%>">
                  <input type="hidden" name="mid" value="<%= jvo.getEmail()%>">
                  <input type="hidden" name="pid" value="<%= vo.getPid()%>">
                  <input type="hidden" name="pcnt" value="<%= vo.getC_qty()%>">
                  <input type="hidden" name="total" value="<%= parseTotal %>">
                  <input type="hidden" name="order_chk" value="x">
                  <% } %>
                  <p class="delivery_info_title">배송지 정보</p>
                  <label>받는사람</label>
                  <input type="text" id="recipient" name="rname">
                  <p style="font-size: 13px; margin: 30px 0px 14px 0px;">* 제주도, 울릉도 지역은 온라인 주문이 불가하오니, 대리점에 직접 방문해주세요</p>
                  <button type="button" class="DELIVERY_LIST1" id="DELIVERY_LIST1">내 배송지 목록</button>
                  <button type="button" class="DELIVERY_LIST2" id="DELIVERY_LIST2">최근 배송지 목록</button>
                  <input type="text" id="recipient_addr1" name="raddrnum">
                  <button type="button" class="find_addr" onClick="goPopup();">주소검색</button>
                  <input type="text" id="recipient_addr2" name="raddr2">
                  <input type="text" id="recipient_addr3" name="raddr3">
                  <label>연락처</label>
                  <input type="text" id="recipient_ph1" name="rph1">
                  <input type="text" id="recipient_ph2" name="rph2">
                  <input type="text" id="recipient_ph3" name="rph3">
               </div>
               <div style="clear:both;"></div>   
               <label>배송 시 요청사항</label>
               <input type="text" placeholder="200자 이내로 작성해주세요." style="width: 900px;" name="rrequest">      
            </div>
            <div class="h140"></div>
            <div class="order_form_sub_title">결제 정보</div>
            <div id="pay_info">
               
               <div class="total_price">
                  총 상품금액
                  <span>&nbsp;&nbsp;<%= parseTotal %>원</span>
               </div>
               <div class="total_price_red">
                  총 결제금액
                  <span>&nbsp;&nbsp;<%= parseTotal %>원</span>
               </div>
               
               <div style="clear:both;"></div>
               <hr style="border:1px solid #f0f0f0;">
               <div id="payBtn_area">
                  <label>결제수단</label>
                  <button type="button">신용카드</button>
                  <button type="button">무통장 입금</button>
                  <button type="button">실시간 계좌이체</button>
               </div>
               <hr style="margin-top: 25px; border: 1px solid #f0f0f0;">
            </div>
               <div class="h140"></div>
               <div class="order_form_sub_title" style="border-bottom:1px solid white;">결제 전 확인사항</div>
               <div class="discription">
                  <p>1. 고객의 단순한 변심으로 교환, 반품 및 환불을 요구할 때 수반되는 배송비는 고객님께서 부담하셔야합니다.</p>
                  <p>2. 상품을 개봉했거나 설치한 후에는 상품의 재판매가 불가능하므로 고객님의 변심에 대한 교환, 반품이 불가능함을 양지해 주시기 바랍니다.</p>
               </div>
               <div class="h80"></div>
            
               <button type="button" id="btn_pay">결제하기</button>
            </form>
         </div>
      </section>
   </div>
   <jsp:include page="../nibangBanner.jsp"/>
   <jsp:include page="../footer.jsp" />
</body>
</html>