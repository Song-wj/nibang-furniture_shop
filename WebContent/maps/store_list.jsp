<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*,com.google.gson.*"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    	String loc = request.getParameter("loc");
    	mapDAO dao = new mapDAO();
    	ArrayList<mapVO> list = dao.getStoreList(loc);
    	
    	
    	JsonArray jarry = new JsonArray();
    	JsonObject jdata = new JsonObject();
    	Gson gson = new Gson();
    	
    	for(mapVO vo : list){
    		JsonObject jobj = new JsonObject();
    		jobj.addProperty("mimg", vo.getMimg()); 
    		jobj.addProperty("mloc", vo.getMloc());
    		jobj.addProperty("maddr", vo.getMaddr());
    		jobj.addProperty("mph", vo.getMph());
    		jobj.addProperty("mpark", vo.getMpark());
    		jobj.addProperty("mtime", vo.getMtime());
    		jobj.addProperty("mholiday", vo.getMholiday());
    
    		jarry.add(jobj);
    	}
    		jdata.add("jlist" , jarry);
    		out.write(gson.toJson(jdata)); 
    %>
