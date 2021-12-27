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
    <title>Cho's Delivery</title>
  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	
	<div class="align-middle" style="width:100rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;">
		
	
	<c:choose>
		<c:when test="${DELIVERYLIST == null}">
		<div align="center">
		<h1><b>주문이 없습니다.</b></h1><br/><br/><br/><br/><br/><br/><br/>
		</div>
		
		</c:when>
		<c:otherwise>

		
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col" width="10"><h6><b>주문번호</b></h6></th>
      <th scope="col" width="30"><h6><b>아이디</b></h6></th>
      <th scope="col" width="80"><h6><b>이름</b></h6></th>
      <th scope="col" width="150"><h6><b>전화번호</b></h6></th>
      <th scope="col" width="180"><h6><b>메뉴</b></h6></th>
      <th scope="col" width="60"><h6><b>수량</b></h6></th>
      <th scope="col" width="80"><h6><b>가격</b></h6></th>
      <th scope="col" width="150"><h6><b>특이사항</b></h6></th>
      <th scope="col" width="80"><h6><b>결제방법</b></h6></th>
      <th scope="col" width="220"><h6><b>주소</b></h6></th>
      <th scope="col" width="50"><h6><b>주문현황</b></h6></th>
    </tr>
  </thead>
  
<c:forEach var="cnt" items="${DELIVERYLIST }">
  <tbody>
    <tr>
      <td><h5><b>${cnt.delivery_number }</b></h5></td>
      <td><h5><b>${cnt.delivery_id }</b></h5></td>
      <td><h5><b>${cnt.delivery_name }</b></h5></td>
      <td><h5><b>${cnt.delivery_phone }</b></h5></td>
      <td><h5><b>${cnt.delivery_menuname }</b></h5></td>
      <td><h5><b>${cnt.delivery_some }</b></h5></td>
      <td><h5><b>${cnt.delivery_price } 원</b></h5></td>
      <td><h5><b>${cnt.delivery_note }</b></h5></td>
      <td><h5><b>${cnt.delivery_type }</b></h5></td>
      <td><a href="#" onclick="return map('${cnt.delivery_address }');"><h5><b>${cnt.delivery_address }</b></h5></a></td>
      <td>
      
    <script type="text/javascript">
	function map(location){
		window.open('../manager/map.html?address='+location+'&no=${cnt.delivery_number}','map','width=800,height=650').focus();
	}
	</script>
	
      <c:choose>
      	<c:when test="${cnt.delivery_state == '결제' }">
      	<button type="button" id="btn-signup" class="btn btn-lg btn-warning btn-block"
     	 onclick="location.href='../manager/manager.html?STATE=ing&NO=${cnt.delivery_number }&ID=${cnt.delivery_id }'">주문확인</button></td>
      	</c:when>
      	<c:when test="${cnt.delivery_state =='ing' }">
      	
      	<button type="button" id="btn-signup" class="btn btn-lg btn-warning btn-block"
     	 onclick="location.href='../manager/manager.html?STATE=end&NO=${cnt.delivery_number }&ID=${cnt.delivery_id }'">조리중</button></td>
      	</c:when>
      	
      	<c:when test="${cnt.delivery_state =='end' }">
      	<button type="button" id="btn-signup" class="btn btn-lg btn-warning btn-block"
     	 onclick="location.href='../manager/manager.html?STATE=departure&NO=${cnt.delivery_number }&ID=${cnt.delivery_id }'">출발</button></td>
      	
      	</c:when>
      </c:choose>
      </c:forEach>
	  


    </tr>
  </tbody>

</table>



		
		
		</c:otherwise>
	</c:choose>
	


		
</div>
</div>

</body>
</html>