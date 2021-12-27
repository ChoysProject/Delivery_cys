<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
 <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100" align="center">

<div class="align-middle" style="width:100rem; border-radius:100px;">
		<div class="card-title" style="margin-top:90px;">

	
	
	<style> 
     *{margin:0;padding:0;}  *
      ul,li{list-style:none;}  
      .slide{height:700px;position:relative;overflow:hidden;}  
     .slide ul{width:400%;height:100%;transition:1s;display:flex;animation:slide 20s infinite;} /* slide를 8초동안 진행하며 무한반복 함 */ 
      .slide li{float:left;width:25%;height:100%;}  
     .slide li:nth-child(1){background: url("../resources/images/main1.png") no-repeat center;}  
     .slide li:nth-child(2){background: url("../resources/images/main2.png") no-repeat center;}  
     .slide li:nth-child(3){background: url("../resources/images/main3.png") no-repeat center;}  
      .slide li:nth-child(4){background: url("../resources/images/main4.png") no-repeat center;}  
     
      .slide input{display:none;} 
      .slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;} 
      .slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;text-align:center;} 
     
     
   .pos1:checked~ul{margin-left:0%;} 
   .pos2:checked~ul{margin-left:-100%;} 
   .pos3:checked~ul{margin-left:-200%;} 
   .pos4:checked~ul{margin-left:-300%;} 
   .pos1:checked~.pos>label:nth-child(1){background: url("../resources/images/berger.png") no-repeat center;} 
   .pos2:checked~.pos>label:nth-child(2){background: url("../resources/images/chiller.png") no-repeat center;} 
   .pos3:checked~.pos>label:nth-child(3){background: url("../resources/images/wing.png") no-repeat center;} 
   .pos4:checked~.pos>label:nth-child(4){background: url("../resources/images/oreo.png") no-repeat center;} 
     
     
        @keyframes slide { 
        0% {margin-left:0;} /* 0 ~ 10  : 정지 */  
        10% {margin-left:0;} /* 10 ~ 25 : 변이 */  
        25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */  
        35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */  
        50% {margin-left:-200%;}  
        60% {margin-left:-200%;}  
        75% {margin-left:-300%;}  
        85% {margin-left:-300%;}  
        100% {margin-left:0;}  
      }   

     
     
     
     
  </style> 


<body>
  <div class="slide">
  <input type="radio" name="pos" id="pos1" checked> 
  <input type="radio" name="pos" id="pos2"> 
  <input type="radio" name="pos" id="pos3"> 
   <input type="radio" name="pos" id="pos4"> 
    <ul>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
   <p class="pos">
    <label for="pos1"> </label> 
    <label for="pos2"> </label> 
    <label for="pos3"> </label> 
    <label for="pos4"> </label>
   </p> 
    
  </div>
</body>
	
	

	
	
	
<!-- 	<div id="slide"> -->
<!--   <input type="radio" name="pos" id="pos1" checked> -->
<!--   <input type="radio" name="pos" id="pos2"> -->
<!--   <input type="radio" name="pos" id="pos3"> -->
<!--   <input type="radio" name="pos" id="pos4"> -->
<!--   <ul> -->
<!--     <li></li> -->
<!--     <li></li> -->
<!--     <li></li> -->
<!--     <li></li> -->
<!--   </ul> -->
<!--   <p class="pos"> -->
<!--     <label for="pos1"> </label> -->
<!--     <label for="pos2"> </label> -->
<!--     <label for="pos3"> </label> -->
<!--     <label for="pos4"> </label> -->
<!--   </p> -->
  
<!-- </div> -->

</div>
<br/>
<hr width=100% border-top: 3px dotted blue;>
<br/>

<div align="center">
<label>
<h1><b> T o d a y </b></h1>
<img alt="" src="../resources/images/oto.jpg" width="150" height="200">
<h1><b> M e n u </b></h1>
</label>
</div>

<br/>
<hr width=100% border-top: 3px dotted blue;>
<br/>
<div align="center">

<img alt="" src="../resources/images/mp.png">

</div><br/>
<hr width=100% border-top: 3px dotted blue;>
<br/>
<div align="center">

<img alt="" src="../resources/images/howtouse.png" style="max-width: 100%; height: auto;">
   	   	
</div>
	</div>
</body>
</html>