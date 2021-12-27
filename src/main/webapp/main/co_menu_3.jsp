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
	<button type="button" class="btn btn-warning" onclick="location.href='../prefer/prefermenu.html?BODY=prefer.jsp'" > 즐겨찾기 </button>
</div>
</div>
<br/><br/><br/><br/>


<div align="center"><h2><b>스낵 & 사이드</b></h2></div><br/><br/>
<table class="table">
	<tr align="center">
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1729.png">
	<input type="hidden" name="menuname" value="cho 치킨텐더 4 조각">
	<input type="hidden" name="price" value="5600">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1729.png" style=” display:block;”>  
	<br/><b>cho's 치킨텐더 4 조각<br/> 가격 ￦ 5600<br/> 359 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1730.png">
	<input type="hidden" name="menuname" value="cho 치킨텐더 2 조각">
	<input type="hidden" name="price" value="2700">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1730.png" style=” display:block;”>  
	<br/><b>cho's 치킨텐더 2 조각<br/> 가격 ￦ 3200<br/> 180 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6941.png">
	<input type="hidden" name="menuname" value="cho 스트링 치즈">
	<input type="hidden" name="price" value="2700">
	<td>
	<img class="img-thumbnail" src ="../resources/images/6941.png" style=” display:block;”>  
	<br/><b>cho's 스트링 치즈<br/> 가격 ￦ 2300<br/> 50 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	
	<tr align="center">
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/5199.png">
	<input type="hidden" name="menuname" value="cho 마요소스">
	<input type="hidden" name="price" value="200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/5199.png" style=” display:block;”>  
	<br/><b>cho's 마요소스 <br/> 가격 ￦ 200<br/> 153 Kcal <br/></b>
	<<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1260.png">
	<input type="hidden" name="menuname" value="cho 치스랩">
	<input type="hidden" name="price" value="2700">
	
	<td><img class="img-thumbnail" src ="../resources/images/1260.png" style=” display:block;”>  
	<br/><b>cho's 치스랩 <br/> 가격 ￦ 2700<br/> 280 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1402.png">
	<input type="hidden" name="menuname" value="cho 감자튀김">
	<input type="hidden" name="price" value="2300">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1402.png" style=” display:block;”>  
	<br/><b>cho's 감자튀김<br/> 가격 ￦ 2300<br/> 368 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	
	<tr align="center">
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6202.png">
	<input type="hidden" name="menuname" value="cho 치너겟 4 조각">
	<input type="hidden" name="price" value="2400">
	<td>
	<img class="img-thumbnail" src ="../resources/images/6202.png" style=” display:block;”>  
	<br/><b>cho's 치너겟 4 조각<br/> 가격 ￦ 2400<br/> 191 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1463.png">
	<input type="hidden" name="menuname" value="cho 치너겟 6 조각">
	<input type="hidden" name="price" value="3700">
	<td><img class="img-thumbnail" src ="../resources/images/1463.png" style=” display:block;”>  
	<br/><b>cho's 치너겟 6 조각<br/> 가격 ￦ 3700<br/> 287 Kcal <br/></b>
	<<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1465.png">
	<input type="hidden" name="menuname" value="cho 치너겟 10 조각">
	<input type="hidden" name="price" value="5200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1465.png" style=” display:block;”>  
	<br/><b>cho's 치너겟 10 조각<br/> 가격 ￦ 5200<br/> 479 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	
	<tr align="center">
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6992.png">
	<input type="hidden" name="menuname" value="cho 치즈스틱">
	<input type="hidden" name="price" value="2700">
	<td>
	<img class="img-thumbnail" src ="../resources/images/6992.png" style=” display:block;”>  
	<br/><b>cho's 치즈스틱<br/> 가격 ￦ 2700<br/> 178 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	
	</table>
</body>
</html>