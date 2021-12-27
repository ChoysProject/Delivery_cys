<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	
	

	<c:choose>
		<c:when test="${prefer_id == null }">
		<div>
		<h3><b>현재 선호 메뉴가 없습니다.</b></h3>
		<h4><b>선호 메뉴 지정을 진행하려면 메뉴에서 선호메뉴를 먼저 선택하시기 바랍니다.</b></h4>
		</div>
		</c:when>
		<c:otherwise>
		<div align="center">
		<h2><b>즐겨 찾는 메뉴입니다.</b></h2>
		
		<table align="center">
			<tr><td><img alt="" src="${preper_picture }"></td><td><h4><b>${prefer_name }</b></h4>
			<tr><td><img alt="" src="">
		</table>
		</div>
		</c:otherwise>
	</c:choose>
	
	
	

		

		
		
		
		
		</div>
	
</div>
</body>
</html>