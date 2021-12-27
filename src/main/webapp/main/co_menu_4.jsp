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
	<button type="button" class="btn btn-warning" onclick="location.href='../costomer/mypage_menu1.html?BODY=mypage_menu1.jsp'" > 주문조회 </button>
	<button type="button" class="btn btn-warning btn-lg" ><b> 결제하기 </b></button>
	<button type="button" class="btn btn-warning" onclick="location.href='../prefer/prefermenu.html?BODY=prefer.jsp'"> 즐겨찾기 </button>
</div>
</div>
<br/><br/><br/><br/>


<div align="center"><h2><b>음 료</b></h2></div><br/><br/>
<table class="table">
	<tr align="center">
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1506.png">
	<input type="hidden" name="menuname" value="cho 콜라">
	<input type="hidden" name="price" value="2000">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1506.png" style=” display:block;”>  
	<br/><b>cho's 콜라<br/> 가격 ￦ 2000<br/>143 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1530.png">
	<input type="hidden" name="menuname" value="cho 제로콜라">
	<input type="hidden" name="price" value="2000">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1530.png" style=” display:block;”>  
	<br/><b>cho's 제로콜라<br/> 가격 ￦ 2000<br/> 0 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1533.png">
	<input type="hidden" name="menuname" value="cho 카페라떼">
	<input type="hidden" name="price" value="3200">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1533.png" style=” display:block;”>  
	<br/><b>cho's 카페라떼<br/> 가격 ￦ 3200<br/> 187 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1540.png">
	<input type="hidden" name="menuname" value="cho 아이스 카페라떼">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1540.png" style=” display:block;”>  
	<br/><b>cho's 아이스 카페라떼 <br/> 가격 ￦ 3200<br/> 109 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1581.png">
	<input type="hidden" name="menuname" value="cho 우유">
	<input type="hidden" name="price" value="2200">
	<td><img class="img-thumbnail" src ="../resources/images/1581.png" style=” display:block;”>  
	<br/><b>cho's 우유 <br/> 가격 ￦ 2200<br/> 157 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1630.png">
	<input type="hidden" name="menuname" value="cho 자두칠러">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1630.png" style=” display:block;”>  
	<br/><b>cho's 자두칠러<br/> 가격 ￦ 3200<br/> 198 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr></form>
	
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1852.png">
	<input type="hidden" name="menuname" value="cho 딸기칠러">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1852.png" style=” display:block;”>  
	<br/><b>cho's 딸기칠러<br/> 가격 ￦ 3200<br/>209 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1889.png">
	<input type="hidden" name="menuname" value="cho 한라봉칠러">
	<input type="hidden" name="price" value="3200">
	<td><img class="img-thumbnail" src ="../resources/images/1889.png" style=” display:block;”>  
	<br/><b>cho's 한라봉 칠러<br/> 가격 ￦ 3200<br/> 236 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1877.png">
	<input type="hidden" name="menuname" value="cho 배칠러">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1877.png" style=” display:block;”>  
	<br/><b>cho's 배칠러<br/> 가격 ￦ 3200<br/> 256 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr></form>
	
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1701.png">
	<input type="hidden" name="menuname" value="cho 딸기 쉐이크">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1701.png" style=” display:block;”>  
	<br/><b>cho's 딸기 쉐이크<br/> 가격 ￦ 3200<br/> 350 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1702.png">
	<input type="hidden" name="menuname" value="cho 초코 쉐이크">
	<input type="hidden" name="price" value="3200">
	<td><img class="img-thumbnail" src ="../resources/images/1702.png" style=” display:block;”>  
	<br/><b>cho's 초코 쉐이크<br/> 가격 ￦ 3200<br/> 344 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1703.png">
	<input type="hidden" name="menuname" value="cho 바닐라 쉐이크">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1703.png" style=” display:block;”>  
	<br/><b>cho's 바닐라 쉐이크<br/> 가격 ￦ 3200<br/> 344 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr></form>
	
	</table>
</body>
</html>