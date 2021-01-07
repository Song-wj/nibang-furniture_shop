<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
	String mid = request.getParameter("id");
	String oid = request.getParameter("oid"); 
	String cnt = request.getParameter("cnt");
	
	productDAO pdao = new productDAO();
	nibangDAO ndao = new nibangDAO();
	orderDAO odao = new orderDAO();
	//productVO pvo = pdao.getData(pid); 
	joinVO jvo = ndao.getMemberInfo(mid);
	orderVO ovo = odao.getOrder();
	ArrayList<subOrderVO> slist = odao.getProductName(ovo.getOid());
	//System.out.println("1===="+ovo.getOid());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Insert title here</title>
<script>
	IMP.init('imp84143310');
	
	IMP.request_pay({
	    pg : 'inicis',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '<% for(subOrderVO vo : slist) { %><%= vo.getPname()%>/ <%}%>',
	    amount : 100, //판매 가격은 임시용으로 1000원으로 설정!
	    buyer_email : '<%= jvo.getEmail()%>',
	    buyer_name : '<%= jvo.getName()%>',
	    buyer_tel : '<%= jvo.getPh()%>',
	    buyer_addr : '<%= jvo.getAddr()%>',
	    buyer_postcode : '<%= jvo.getAddr_num()%>'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        /* msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num; */
	        location.href = "orderComplete.jsp?id=<%=mid%>&oid=<%=ovo.getOid()%>";

	    } else {
	        var msg = '결제에 실패하였습니다.';
	        /* msg += '에러내용 : ' + rsp.error_msg; */
	        <% odao.orderDelete(ovo.getOid()); %>
	       <%--  location.href = "order_form.jsp?pid=<%=pid%>&id=<%=mid%>&cnt=<%=cnt%>"; --%>
	    }
	    alert(msg);
	});
</script>
</head>
<body>

</body>
</html>