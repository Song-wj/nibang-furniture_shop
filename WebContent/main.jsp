<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		
		
		<style>
			div.content { width:70%;
			              margin:auto; }    
			section {width:1800px; margin:auto;}
		   .section2 .label {text-align:center;
		   					 font-size:16px;
							 font-weight:bold;
							 color:#333; 
							}
		   .section2 .recomand_img {width:230px; height:200px;
		   							padding:30px 30px 0px 30px; }
		   .section2 .recomand>div{display:inline-block;}
		   
		   .section3 >div  {padding: 50px 0px;}
		   .section3 .simple {display:inline-block;}					
		   .section3 .simple .simple_img{width:450px; height:550px;
		   								 padding: 50px 30px 15px 10px;}
		  
		   .section4>div {padding-top:50px;
		   				  padding-bottom:70px;}
		       	  
		     
		   .section2>div{ text-align:center; 
		      			  margin:60px;} 
		   .section3{text-align:center; border-top:1px solid lightgray;}	  
		   .section4{text-align:center; }
		   .section4 .quick {display:inline-block; padding:50px;
		   border:1px solid red;}
		   .section4 .effect1 {
		     display:inline-block;
		     width:200px; height:200px;
		     background:url('images/quick_menu_3.png');
		     }		   
		   .section4 .effect2 {
		     display:inline-block;
		     width:200px; height:200px;
		     background:url('images/quick_menu_4.png')}
		    .section4 .effect3 {
		     display:inline-block;
		     width:200px; height:200px;
		     background:url('images/quick_menu_2.png')}
		    .section4 .effect1:hover{background:url('images/quick_menu_33.png')}
		    .section4 .effect2:hover{background:url('images/quick_menu_44.png')}
		    .section4 .effect3:hover{background:url('images/quick_menu_22.png')}
		     
		     
		     
		    div.carousel-slide h5 {color:black;
		    						float:left;}
		
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
				
				        <div class="carousel-slide">  
				         <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						  </ol>         			   
				                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
									  <div class="carousel-inner">
									    <div class="carousel-item active">
									      <img src="http://localhost:9000/sist_project_2/images/1.jpg" class="d-block w-100" alt="...">
									     <div class="carousel-caption d-none d-md-block">
       									 <h5>1 of 6</h5>
       									 </div>
									    </div>
									    <div class="carousel-item">
									      <img src="http://localhost:9000/sist_project_2/images/2.jpg" class="d-block w-100" alt="...">
									      <div class="carousel-caption d-none d-md-block">
       									 <h5>2 of 6</h5>
       									 </div>
									    </div>
									    <div class="carousel-item">
									      <img src="http://localhost:9000/sist_project_2/images/3.jpg" class="d-block w-100" alt="...">
									      <div class="carousel-caption d-none d-md-block">
       									 <h5>3 of 6</h5>
       									 </div>
									    </div>
									     <div class="carousel-item">
									      <img src="http://localhost:9000/sist_project_2/images/4.jpg" class="d-block w-100" alt="...">
									      <div class="carousel-caption d-none d-md-block">
       									 <h5>4 of 6</h5>
       									 </div>
									    </div>
									     <div class="carousel-item">
									      <img src="http://localhost:9000/sist_project_2/images/5.jpg" class="d-block w-100" alt="...">
									      <div class="carousel-caption d-none d-md-block">
       									 <h5>5 of 6</h5>
       									 </div>
									    </div>
									     <div class="carousel-item">
									      <img src="http://localhost:9000/sist_project_2/images/6.jpg" class="d-block w-100" alt="...">
									      <div class="carousel-caption d-none d-md-block">
       									 <h5>6 of 6</h5>
       									 </div>
									    </div>
									  </div>
									  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>
									  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									    <span class="sr-only">Next</span>
									  </a>
									</div>
				    </div>		
			<section class="section2">
				<div>
				<div >
					<label class="label">고객님을 위한 제품</label>
				</div>
				<div class="recomand">					
					<div><img class="recomand_img" src="images/test1.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>
					<div><img class="recomand_img" src="images/test2.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>
					<div><img class="recomand_img" src="images/test3.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>
					<div><img class="recomand_img" src="images/test4.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>
					<div><img class="recomand_img" src="images/test5.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>
					<div><img class="recomand_img" src="images/test6.jpg" ><br><label class="price">~~~~</label><br><label>~~~~~</label></div>				
				</div>
				</div>
			</section>
			<section class="section3">
				<div >
				   <div class="simple">
				 	  <a href =""><img src="images/a.jpg" class="simple_img"></a>
				   </div>
				   <div class="simple">
				   		<a href =""><img src="images/b.jpg" class="simple_img"></a>
				   </div>
				   <div class="simple">
						<a href =""><img src="images/c.jpg" class="simple_img"></a>
				   </div>
				</div>
			</section>
			<section class ="section4">
				<div>
				<img src="images/quick_menu.png" style=margin:30px;>
				<div>
					<div class="quick">
					  	<a href="" class="effect1"><br><span>Store</span><br><span>매장안내</span></a>
					</div>
					<div class="quick"> <a href="" class="effect2">	<br><span>Notice</span> <br><span>공지사항</span></a>
					</div>
					<div class="quick">
					  	<a href="" class="effect3"><br><span>Refurb</span> <br> <span>전시품판매</span></a>
					</div>
				</div>
				</div>
			</section>		
		
		
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>