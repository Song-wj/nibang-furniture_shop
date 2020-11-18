<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
            header {width:100%; margin:auto; position:fixed;
            		z-index:5;}         
            *:focus { outline:none; }  
		    header .mw {position:fixed;
				_position:absolute;
				 top:0;
				 left:0;
				 width:100%;
				 height:100%;
				 display:none;}
			header .mw .bg {position:absolute;
					 top:0;
					 left:0;
					 width:100%;
					 height:100%;
					 background:#000;
					 opacity:.5;
					 filter:alpha(opacity=50)}
			header .mw .fg {float:left; 
			         position:absolute;
					 width:400px; 
					 height:100%;
					 border-radius:7px;		
					 border:3px solid #ccc;
					 background:#fff;}	 
			header div.fg>nav>ul>li {list-style-type:none;
							         padding:10px;
							        }
			header div.fg button.close_btn{display:inline-block;
									float:right;
									margin:30px 30px 0 0;
									border:1px solid white;
									width:50px;
									heigth:50px;
									background-color:white;
									}		
			header div.fg>nav.first>ul {							
							margin-top:100px;
							margin-right:130px;}								  
			header div.fg>nav>ul>li:nth-child(2),	div.fg>nav>ul>li:nth-child(3),	div.fg>nav>ul>li:nth-child(4)	{
			 				font-size:30px;
			 				font-weight:2000px;} 
			
			header div.fg>nav>ul>li:nth-child(5),  header div.fg>nav>ul>li:nth-child(6), header div.fg>nav>ul>li:nth-child(7),
			header div.fg>nav>ul>li:nth-child(8) , header div.fg>nav>ul>li:nth-child(9){
			 				
			 				font-size:15px;
			 				font-weight:2000px;
			 				} 
			header div.fg>nav>ul>li:nth-child(4){padding-bottom:50px;}                            
            header div img.menu_bar{
            						   
            						   display:inline-block;
            						   float:left;
            						   margin:20px 15px 0 30px;
            						   width:20px; height:20px;
            						   }
            header div.icons input[type="text"]{
            							      						 
		            							 width:300px;
		            							 height:40px;
		            							 background-color:lightgray;
		            							 border:1px solid lightgray;
		            							 text-indent:30px;
		            							
		            							 } 	
            header .icons img{
                             width:40px; height50px;
                             float:left;
                             margin-top:5px;
            			}
            header .icons{ display:inline-block;
            				border:1px solid red;
            				width:400px; height:50px;
            				padding-left:10px;
            				background-color:lightgray;
            				border-radius:15px;
            				margin-top:15px;}
            			 
            header #logo{                       
                         position:absolute;
                         left:48%;
                         margin-top:20px;
                        }
            header div nav.second>ul>li{display:inline;         					 
            					        font-size:12px;
            					       
            					    }
            header div nav.second ul li a{text-decoration:none;
            						 color:black;}
            header div nav.second ul { float:right;            					
            					margin-top:-50px;
            					margin-right:10px;
            					}
            header div nav.second ul li div{
            						 background-color:gray;
            						 width:1px; height:7px;
            						 display:inline-block;
            						 margin:0 7px 0 7px;}
            
		</style>
	</head>
	<body>
		<header>	
		     <div>
		     	<div>			     
			     	<img src="http://localhost:9000/iloom/images/icon_gnb_menu.png" onClick="document.getElementById('mw_temp').style.display='block'" class="menu_bar">
					<div id="mw_temp" class="mw">
					<div class="bg"><!--이란에는 내용을 넣지 마십시오.--></div>
						   <div class="fg">		               
		              			 <button onclick="document.getElementById('mw_temp').style.display='none'" type="button" class="close_btn"><img src="http://localhost:9000/iloom/images/option_delete.png"></button>
		               				<nav class="first">
		               					<ul>
						               	    <li><img src="http://localhost:9000/iloom/images/gnb_logo.png"></li>
							               	<li>모든제품</li>
							               	<li>신제품</li>
						               		<li>이벤트</li>
						               		<li>의자</li>
						               		<li>식탁</li>
						               		<li>책상</li>
						               		<li>수납장</li>
						               		<li>옷장</li>
		               					</ul>
		               				</nav>
		   					</div>
					</div>
					
						<div class="icons"> 
							<img src="http://localhost:9000/sist_project_2/images/search.png">
		     				<input type="text" name="se" >
		     			</div>
							
					    
			     	<a href="http://localhost:9000/iloom/header2.jsp"><img id="logo" src ="http://localhost:9000/iloom/images/gnb_logo.png"></a>
				 <nav class="second">  
				    <ul>			            			
				     	<li ><a href="">로그인</a><div></div></li>
						<li ><a href="">회원가입</a><div></div></li>
						<li ><a href="">마이페이지</a><div></div></li>
						<li ><a href="">고객센터</a><div></div></li>
						<li style="padding-right:20px;"><a href="">매장안내</a></li>
			        </ul>
			   </nav>
			 </div>
			 </div> 
		</header>
			 
		
	</body>
</html>