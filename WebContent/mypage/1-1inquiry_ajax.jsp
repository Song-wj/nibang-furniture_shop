<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,com.google.gson.*,java.util.*"%>
    
 <%
	String mid =request.getParameter("mid");
	int period =Integer.parseInt(request.getParameter("period"));
	messageDAO dao = new messageDAO();
	
	
	
	
		
	ArrayList<messageVO> list = dao.getInquiryList(period, mid);
	
	
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(messageVO vo: list){
		JsonObject jobj = new JsonObject();
		jobj.addProperty("sid",vo.getSid());
		jobj.addProperty("div",vo.getM_div());	
		jobj.addProperty("title",vo.getM_title());
		jobj.addProperty("date",vo.getM_date());
		
		
	
		jarray.add(jobj);
	}
	jdata.add("jlist",jarray);
	out.write(gson.toJson(jdata));
	
%>
 
