<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
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
	
	<button type="button" class="btn btn-warning btn-lg" 
	onclick="location.href='../cart/show.html'"><b> 결제하기 </b></button>
	
	<button type="button" class="btn btn-warning"
    onclick="location.href='../prefer/prefermenu.html?BODY=prefer.jsp'"> 즐겨찾기 </button>
</div>
</div>
<br/><br/><br/><br/>


<div align="center"><h2><b>추 천 메 뉴</b></h2></div><br/><br/>
<table class="table">

	<tr align="center">

	<c:forEach var="i" begin="1" end="3">
	<c:forEach var="menu_info" items="${MENU_LIST }">
	<c:choose>
	<c:when test="${menu_info.menu_id==i }">
	<td>
	<img src ="${menu_info.menu_picture }" style=”display:block;”>
	<br/>
	<b>${menu_info.menu_name }<br/> 가격 ￦ ${menu_info.menu_price }<br/> ${menu_info.menu_calorie } Kcal <br/></b>



	<div display="flex">
	<button type="button" class="btn btn-warning" 
	onclick="location.href='../menu/select.html?CODE=${menu_info.menu_id}&MENUNAME=${menu_info.menu_name }&MENUPRICE=${menu_info.menu_price }&MENUSOME=${menu_info.menu_some }&MENUCALRORIE=${menu_info.menu_calorie }&MENUPICTURE=${menu_info.menu_picture }'">
	<b>추가하기</b></button>
	<button type="button" class="btn btn-warning" onclick="prefer(picture='${menu_info.menu_picture}',price='${menu_info.menu_price }',calorie='${menu_info.menu_calorie }');">
	★</button>
	</td>
	
<script type="text/javascript">
	function prefer(picture,price,calorie){
		

		
		var a = picture;
		var b = price;
		var c = calorie;
		
		window.open('../prefer/addPrefer.html?PICTURE='+a+'&PRICE='+b+'&CALORIE='+c+'','prefer','width=400,height=250').focus();
	    location.href="../costomer/menu2.html?BODY=co_menu.jsp";
		
		location.href="../costomer/menu2.html?BODY=co_menu.jsp";

	}
</script>
	
	
	</c:when>
	


	</c:choose>
	


	</c:forEach>
	</c:forEach>
	
	</tr>

	<tr align="center">
	<c:forEach var="i" begin="4" end="6">
	<c:forEach var="menu_info" items="${MENU_LIST }">
	<c:choose>
	<c:when test="${menu_info.menu_id==i }">
	
	<td>
	<img src ="${menu_info.menu_picture }" style=”display:block;”>
	<br/><b>${menu_info.menu_name }<br/> 가격 ￦ ${menu_info.menu_price }<br/> ${menu_info.menu_calorie } Kcal <br/></b>
	
	<div display="flex">
	<button class="btn btn-warning" 
	onclick="location.href='../menu/select.html?CODE=${menu_info.menu_id}&MENUNAME=${menu_info.menu_name }&MENUPRICE=${menu_info.menu_price }&MENUSOME=${menu_info.menu_some }&MENUCALRORIE=${menu_info.menu_calorie }&MENUPICTURE=${menu_info.menu_picture }'">
	<b>추가하기</b></button>
	<button type="button" class="btn btn-warning">
	<b>★</b></button></div>
	</td>
	</c:when>
	
	</c:choose>
	</c:forEach>
	</c:forEach>
	
	</tr>
	
	
	<tr align="center">
	
	<c:forEach var="i" begin="7" end="9">
	<c:forEach var="menu_info" items="${MENU_LIST }">
	<c:choose>
	<c:when test="${menu_info.menu_id==i }">
	
	
	<td>
	<img src ="${menu_info.menu_picture }" style=”display:block;”>
	<br/><b>${menu_info.menu_name }<br/> 가격 ￦ ${menu_info.menu_price }<br/> ${menu_info.menu_calorie } Kcal <br/></b>
	
	<div display="flex">
	<button class="btn btn-warning" 
	onclick="location.href='../menu/select.html?CODE=${menu_info.menu_id}&MENUNAME=${menu_info.menu_name }&MENUPRICE=${menu_info.menu_price }&MENUSOME=${menu_info.menu_some }&MENUCALRORIE=${menu_info.menu_calorie }&MENUPICTURE=${menu_info.menu_picture }'">
	<b>추가하기</b></button>
	<button type="button" class="btn btn-warning">
	<b>★</b></button></div>
	</td>
	</c:when>
	
	</c:choose>
	</c:forEach>
	</c:forEach>
	
	</tr>
	

	

	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/menuchiller2.png">
	<input type="hidden" name="menuname" value="배 칠러">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/menuchiller2.png" style=” display:block;”>  
	<br/><b>배 칠러<br/> 가격 ￦ 3200<br/> 256 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/menuchiller3.png">
	<input type="hidden" name="menuname" value="자두 칠러">
	<input type="hidden" name="price" value="3200">
	
	<td><img class="img-thumbnail" src ="../resources/images/menuchiller3.png" style=” display:block;”>  
	<br/><b>자두 칠러<br/> 가격 ￦ 3200<br/> 198 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td>
	</form>
	
	
	<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/menuchiller4.png">
	<input type="hidden" name="menuname" value="딸기 칠러">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/menuchiller4.png" style=” display:block;”>  
	<br/><b>딸기 칠러<br/> 가격 ￦ 3200<br/> 209 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>추가하기</b></button>
	<button type="button" class="btn btn-warning"><b>★</b></button></div>
	</td></tr>
	</form>
	</table>
	

	
	
	



</body>
</html>