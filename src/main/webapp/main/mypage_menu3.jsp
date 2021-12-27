<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
  <head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
    <title>내 메뉴 즐겨찾기</title>
  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	
	<div class="align-middle" style="width:100rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;">
		
	
	<c:choose>
		<c:when test="${PREFERLIST == null }">
			<Br/><br/><br/>
			<h4><b>즐겨찾기 메뉴가 없습니다. 메뉴에서 추가해주세요.</b></h4>
		</c:when>
		<c:otherwise>
		
<form action="../prefer/delete.html" method="post">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col"><h6><b>메뉴</b></h6></th>
      <th scope="col"><h6><b>가격</b></h6></th>
      <th scope="col"><h6><b>칼로리</b></h6></th>
	  <th scope="col"><h6><b>*</b></h6></th>
    </tr>
    </thead>
    
  <c:forEach var="cnt" items="${PREFERLIST }">
 	
  <tbody>
    <tr>
    	
    	<td><img alt="" src="${cnt.prefer_picture }">
    	
    	<input type="hidden" name="picture" value="${cnt.prefer_picture }">
    		
    	</td>
    	<td><h5><b><Br/><Br/><Br/>${cnt.prefer_price }</b></h5></td>
    	<td><h5><b><Br/><br/><Br/>${cnt.prefer_calorie }</b></h5></td>
    	<td>
    	
    	<div display="flex"><Br/><br/>
			<button name="BTN" class="btn btn-warning" value="주문"> 추 가 </button>&nbsp;
			<button name="BTN" class="btn btn-warning" value="삭제"> 삭 제 </button></div>
    	</td>
    	</tr>
    </c:forEach>
   
    </tbody>
  

</table>
	</form>
	</c:otherwise>
	</c:choose>


		


</body>
</html>