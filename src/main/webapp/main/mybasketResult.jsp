<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>  
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
	
	<div class="card align-middle" style="width:50rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;">
			내 장바구니 관리
		</h2>
		<br/><br/><br/><br/>
	<c:choose>
	<c:when test="${MYBASKET_LIST ==null || SIZE =='NO'}">
	</c:when>
	<c:otherwise>
	<table border="1">
	<c:forEach var="cnt" items="${MYBASKET_LIST }">
	<form action="../delete.html" method="post">
	<input type="hidden" name="mybasket_num" value="${cnt.mybasket_num }"/>
	<tr>
	<td><img alt="" src="${cnt.mybasket_picture }">
	</td>
	<td>${cnt.mybasket_name }</td>
	<td><fmt:formatNumber groupingUsed="true">
	${cnt.mybasket_price }
	</fmt:formatNumber></td>
	<td>
	<input type="text" size ="5" name="mybasket_some" value="cnt.mybasket_some"/></td>
	<td><fmt:formatNumber groupingUsed="true">
		${cnt.mybasket_price * cnt.mybasket_some }
	</fmt:formatNumber></td>
	
	<td><input type="submit" name="BTN" value="수정"/>
	<input type="submit" name="BTN" value="삭제"/></td></tr>
	</form>
	</c:forEach>
	</table>
	</c:otherwise>
	</c:choose>
	<form action="../checkout/checkout.html" method="post">

총합 : <fmt:formatNumber groupingUsed="true">
	${totalAmount }
 </fmt:formatNumber><br/>
		<div align="center">
		<button type="button" btn-signup" class="btn btn-lg btn-primary"
           	onclick="location.href='../costomer/menu2.html?BODY=co_menu.jsp'">메뉴로 돌아가기</button>
           	
        <button type="button" onclick="location.href='../mybasket/mybasket.html'"
        id="btn-signup" class="btn btn-lg btn-primary" >장바구니 보기</button>
		
		
		
</div>
</div>
</form>
</body>
</html>