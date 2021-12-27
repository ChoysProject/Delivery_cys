<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
table{
border-spacing:10px;
}
body{
	margin:0px;
	padding:0px;
}
.garo{
display:flex;
}

.sizes1{
flex:1;
}
.sizes2{
flex:5;  
}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>



<br/><br/><br/>

</head>
<body>
<br/>
<hr width="100%" border-top: 3px dotted blue;>
<br/><br/>

<div align="center"><h1><b>　　M E N U　　</b></h1></div>
<br/><br/>
<div align="right"><img alt="" class="img-thumbnail" src="../resources/images/1-2-3.png"></div>

<br/><br/>



<div align="center">
<br/><br/>
	<h3><b>안녕하세요. ${user_name } 님.</b></h3><br/>
	<h4><b>다음의 주소로 배달됩니다. ${user_address }</b></h4> 
	<h6><b>약 ${delay } 분 후 도착 예정입니다.</b></h6>
		<div display="flex">
	<button type="button" class="btn btn-warning" onclick="location.href='../costomer/mypage_menu1.html?BODY=mypage_menu1.jsp'"> 주문조회 </button>
	<button type="button" class="btn btn-warning btn-lg" ><b> 결제하기 </b></button>
	<button type="button" class="btn btn-warning" onclick="location.href='../prefer/prefermenu.html?BODY=prefer.jsp'"> 즐겨찾기 </button>
</div>
</div>
<br/><br/><br/><br/>


<div align="center"><h2><b>음 료</b></h2></div><br/><br/>
<table class="table">
	<tr align="center">
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/3734.png">
	<input type="hidden" name="menuname" value="cho 바나나 플러리">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/3734.png" style=” display:block;”>  
	<br/><b>cho's 바나나 플러리<br/> 가격 ￦ 3200<br/>346 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1732.png">
	<input type="hidden" name="menuname" value="cho 오레오 플러리">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1732.png" style=” display:block;”>  
	<br/><b>cho's 오레오 플러리<br/> 가격 ￦ 3200<br/> 322 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1288.png">
	<input type="hidden" name="menuname" value="cho 초코쿠키">
	<input type="hidden" name="price" value="2200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1288.png" style=” display:block;”>  
	<br/><b>cho's 초코쿠키<br/> 가격 ￦ 2200<br/> 211 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr></form>
	
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/5264.png">
	<input type="hidden" name="menuname" value="cho 애플파이">
	<input type="hidden" name="price" value="1700">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/5264.png" style=” display:block;”>  
	<br/><b>cho's 애플파이 <br/> 가격 ￦ 1700<br/> 204 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1712.png">
	<input type="hidden" name="menuname" value="cho 초코 아이스크림">
	<input type="hidden" name="price" value="2200">
	<td><img class="img-thumbnail" src ="../resources/images/1712.png" style=” display:block;”>  
	<br/><b>cho's 초코 아이스크림 <br/> 가격 ￦ 2200<br/> 307 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1756.png">
	<input type="hidden" name="menuname" value="cho 카라멜 아이스크림">
	<input type="hidden" name="price" value="2200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1756.png" style=” display:block;”>  
	<br/><b>cho's 카라멜 아이스크림<br/> 가격 ￦ 2200<br/> 306 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>	</td></tr>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1711.png">
	<input type="hidden" name="menuname" value="cho 딸기 아이스크림">
	<input type="hidden" name="price" value="2200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1711.png" style=” display:block;”>  
	<br/><b>cho's 딸기 아이스크림<br/> 가격 ￦ 2200<br/>261 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1713.png">
	<input type="hidden" name="menuname" value="cho 바닐라 아이스크림">
	<input type="hidden" name="price" value="2200">
	<td><img class="img-thumbnail" src ="../resources/images/1713.png" style=” display:block;”>  
	<br/><b>cho's 바닐라 아이스크림<br/> 가격 ￦ 2200<br/> 186 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
	
	
	</table>
</body>
</html>