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
	
	<div class="card align-middle" style="width:50rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;"><b>내 장바구니</b></h2>
		
		<c:choose>
			<c:when test="${menuname==null }">
	
					<div align="center">
					<br/><br/><br/><br/>
					<h3><b>현재 장바구니가 비어 있습니다.</b></h3></div>
					<br/><br/><br/><br/>
					
					<div align="center">
		<button id="btn-signup" class="btn btn-lg btn-primary"
           	onclick="location.href='../costomer/menu2.html?BODY=co_menu.jsp'">메뉴로 돌아가기</button>
           	<br/><br/>
			
			</c:when>
			<c:otherwise>
			
				<table border="1">
					<tr><td><img alt="" src="${img }"></td>
					<td>${menuname }</td>
					<td>${price }</td>
					<td>${some }</td>
					<td>${calorie }</td>
					<td>${menutotal }</td>
					<td><button type="button">삭제</button>
				</table>
			<div align="center"><button id="btn-signup" class="btn btn-lg btn-primary"
           	onclick="location.href='../costomer/menu2.html?BODY=co_menu.jsp'">메뉴로 돌아가기</button>
           	
           	<button id="btn-signup" class="btn btn-lg btn-primary"
           	onclick="" >　　주 문　　</button>
           	</div>
				</c:otherwise>
		</c:choose>

		
		
		
		</div>
	
</div>
</body>
</html>