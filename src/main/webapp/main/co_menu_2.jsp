<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>   
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


<div align="center"><h2><b>햄 버 거</b></h2></div><br/><br/>
<table class="table">
	<tr align="center">
	<form action="../menu/select.html" method="get">
	<td>
	
<!-- 	<input type="hidden" name="img" value="../resources/images/1301.png">
	<input type="hidden" name="menuname" value="cho 빅버거">
	<input type="hidden" name="price" value="5200" -->
	
	<input type="hidden" name="number" value="1301">
	
	<img class="img-thumbnail" src ="../resources/images/1301.png" style=” display:block;”>  
	<br/><b>cho's 빅버거<br/> 가격 ￦ 5200<br/> 548 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1303.png">
	<input type="hidden" name="menuname" value="cho 초하이버거">
	<input type="hidden" name="price" value="5200">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1303.png" style=” display:block;”>  
	<br/><b>cho's 초하이버거<br/> 가격 ￦ 5200<br/> 464 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	<td>
	</form>
	
	
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1314.png">
	<input type="hidden" name="menuname" value="cho 베토버거">
	<input type="hidden" name="price" value="6000">
	<img class="img-thumbnail" src ="../resources/images/1314.png" style=” display:block;”>  
	<br/><b>cho's 베토버거<br/> 가격 ￦ 6000<br/> 542 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1330.png">
	<input type="hidden" name="menuname" value="cho 더블쿼치즈버거">
	<input type="hidden" name="price" value="7600">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1330.png" style=” display:block;”>  
	<br/><b>cho's 더블쿼치즈 버거 <br/> 가격 ￦ 7600<br/> 733 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1340.png">
	<input type="hidden" name="menuname" value="cho 1922버거">
	<input type="hidden" name="price" value="6200">
	
	<td><img class="img-thumbnail" src ="../resources/images/1340.png" style=” display:block;”>  
	<br/><b>cho's 1992 버거 <br/> 가격 ￦ 6200<br/> 530 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1347.png" style=” display:block;”>  
	<br/><b>cho's 쿼치즈 버거<br/> 가격 ￦ 5700<br/> 517 Kcal <br/></b>
	<div display="flex">
	<button type="button" class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1356.png">
	<input type="hidden" name="menuname" value="cho 치스버거">
	<input type="hidden" name="price" value="5400">
	
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1356.png" style=” display:block;”>  
	<br/><b>cho's 치스버거<br/> 가격 ￦ 5400<br/> 670 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1361.png">
	<input type="hidden" name="menuname" value="cho 치 버거">
	<input type="hidden" name="price" value="4000">
	
	<td><img class="img-thumbnail" src ="../resources/images/1361.png" style=” display:block;”>  
	<br/><b>cho's 치 버거<br/> 가격 ￦ 4000<br/> 482 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1395.png">
	<input type="hidden" name="menuname" value="cho 더블 1992 버거">
	<input type="hidden" name="price" value="7900">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1395.png" style=” display:block;”>  
	<br/><b>cho's 더블1992 버거<br/> 가격 ￦ 7900<br/> 746 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1432.png">
	<input type="hidden" name="menuname" value="cho 새우버거">
	<input type="hidden" name="price" value="5000">
	
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1432.png" style=” display:block;”>  
	<br/><b>cho's 새우버거<br/> 가격 ￦ 5000<br/> 482 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1433.png">
	<input type="hidden" name="menuname" value="cho 새고버거">
	<input type="hidden" name="price" value="6200">
	
	<td><img class="img-thumbnail" src ="../resources/images/1433.png" style=” display:block;”>  
	<br/><b>cho's 새고버거<br/> 가격 ￦ 6200<br/> 548 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6303.png">
	<input type="hidden" name="menuname" value="cho 허니버거">
	<input type="hidden" name="price" value="5500">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/6303.png" style=” display:block;”>  
	<br/><b>cho's 허니버거<br/> 가격 ￦ 5500<br/> 554 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6310.png">
	<input type="hidden" name="menuname" value="cho 치즈버거">
	<input type="hidden" name="price" value="2900">
	
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/6310.png" style=” display:block;”>  
	<br/><b>cho's 치즈버거<br/> 가격 ￦ 2900<br/> 310 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6312.png">
	<input type="hidden" name="menuname" value="cho 에불버거">
	<input type="hidden" name="price" value="3700">
	
	<td><img class="img-thumbnail" src ="../resources/images/6312.png" style=” display:block;”>  
	<br/><b>cho's 에불버거<br/> 가격 ￦ 3700<br/> 467 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/6322.png">
	<input type="hidden" name="menuname" value="cho 불버거">
	<input type="hidden" name="price" value="2700">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/6322.png" style=” display:block;”>  
	<br/><b>cho's 불버거<br/> 가격 ￦ 2700<br/> 383 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	</table>
	
	
	



</body>
</html>