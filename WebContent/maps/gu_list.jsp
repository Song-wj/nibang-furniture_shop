<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*,com.google.gson.*"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    	String loc = request.getParameter("loc");
    	mapDAO dao = new mapDAO();
    	ArrayList<locVO> list =dao.getGu(loc);
    	
    	
    	JsonArray jarry = new JsonArray();
    	JsonObject jdata = new JsonObject();
    	Gson gson = new Gson();
    	
    	for(locVO vo : list){
    		JsonObject jobj = new JsonObject();
    		jobj.addProperty("gu", vo.getGu()); 
    		
    		jarry.add(jobj);
    	}
    		jdata.add("jlist" , jarry);
    		out.write(gson.toJson(jdata)); 
    %>
