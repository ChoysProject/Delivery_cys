<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
    
    <title>Cho's Delivery</title>
  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<script type="text/javascript">


	</script>





	
	<div class="card align-middle" style="width:50rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		
		
		<form action="" name="frm">
		<h2 class="card-title text-center" style="color:#113366;">
		${user_id } 님! <br/>	${MENU_LIST.menu_name } 수량을 선택해주세요.</h2>
		<br/><br/><br/>
		
		<table align="center">
		<tr>
		<td></td>
		<td>
 		<select type="select" id="select" name="abc" style="width:130px; height:40px;" onchange="myFunction()">
 			<option value="0">수량을 선택해주세요.</option>
 			<option value="1">1</option>
 			<option value="2">2</option>
 			<option value="3">3</option>
 			<option value="4">4</option>
 			<option value="5">5</option>
 			<option value="6">6</option>
 			<option value="7">7</option>
 			<option value="8">8</option>
 			<option value="9">9</option>
 			<option value="10">10</option>
 			
 		</select></td>
 		
 		
 		
		<td>　</td>
		<td><img alt="" src="${MENU_LIST.menu_picture }"></td>
		<td>　</td>
 		<td><h3><b>${MENU_LIST.menu_name }<br/><br/></b>￦ ${MENU_LIST.menu_price }<br/><br/> 개당 칼로리 : ${MENU_LIST.menu_calorie } Kal</h3></td>
		<td>　</td>
		</tr>
		</table>
<br/><br/><br/>
		
		
		<div align="center"><h2><b id="demo">총 금액　: ￦           원</b></h2></div>
		<br/><br/><br/><br/>
		<div align="center">
		<button type="button" btn-signup" class="btn btn-lg btn-primary"
           	onclick="location.href='../costomer/menu2.html?BODY=co_menu.jsp'">메뉴로 돌아가기</button>
           	
           
        <button type="button" id="btn-signup" class="btn btn-lg btn-primary" 
         onclick="return selection();">카트에 추가</button>
				 
</div>


</div>
</div>
	<input type="hidden" name="total_price" id="total_price"></input>
</form>



<script type="text/javascript">
function myFunction() {
	var num = document.frm.abc.value;
	var total = num * ${MENU_LIST.menu_price};
 	//var a= document.getElementById("pp").value;
	document.getElementById("demo").innerHTML =
		"총 금액　: ￦  "+ (num * ${MENU_LIST.menu_price}) +" 원";
	document.frm.total_price.value = total; 

}
</script>

<script type="text/javascript">
function selection(){
	
	var a = document.getElementById("select").value;
	
	if(a == 0){
		alert("수량을 선택하세요.");
		return false;
	}

	window.open('../cart/addCart.html?CODE=${MENU_LIST.menu_id }&menu_some='+a+'','cart','width=400,height=250').focus(); 
	location.href="../costomer/menu2.html?BODY=co_menu.jsp";
}
</script>


</body>

</html>