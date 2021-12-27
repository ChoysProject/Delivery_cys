<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %> 
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
	<c:when test="${number == null }">
	<br/><br/><br/><br/><br/>
	
	
		주문을 먼저 해주세요.
		
		
		
	<br/><br/><br/><br/><br/>
	</c:when>
	<c:otherwise>


		

		
<table class="table" >
  <thead class="thead-dark" border="1">
    <tr>
      <th scope="col" width="400"><h6><b>주문번호</b></h6></th>
      <th scope="col" width="800" ><h6><b>주문현황</b></h6></th>
      
    </tr>

    
    <tr>
   	<td><h5><b><br/><br/>${number }</b></h5></td>
   	
   
    <c:choose>
    
    	<c:when test="${state == '결제' }">
    	<td><img alt="" src="../resources/images/ing1.png"></td>
    	</c:when>
    	
    	<c:when test="${state == 'ing' }">
    	<td><img alt="" src="../resources/images/ing2.png">
    	</c:when>
    
    	<c:when test="${state == 'end' }">
    	<td><img alt="" src="../resources/images/ing3.png">
    	</c:when>
    
    	<c:when test="${state == 'departure' }">
    	<td><img alt="" src="../resources/images/ing4.png">
    	</c:when>
    
    </c:choose>
    
    
    
    
    
    
    
    </tr>
  </thead>



    </tr>
  </tbody>

</table>


	


	</c:otherwise>	
	</c:choose>
</div>
</div>

</body>
</html>