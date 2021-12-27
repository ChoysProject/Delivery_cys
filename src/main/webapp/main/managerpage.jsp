<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/show.css">
  <head>
  
<script type="text/javascript">
    function logoutcheck(){
    	if(confirm("로그아웃 하시겠습니까?")){
			location.href="../logout/mypage_logout.html";
    		return true;
    		//location.href='../logout/mypage_logout.html';
    	}else{return false;}
    	
    }
</script>

   <title>Cho's Delivery</title>
    
    	<div class="card align-middle" style="width:100rem; border-radius:100px;">
		<div class="card-title" style="margin-top:90px;">
			<h2 class="card-title text-center" style="color:#113366;">
			Management System</h2>
			</div>
		
<br/><br/>


<div id="header">
<div align="center">
<div class="btn-group-justified" align="center" role="group" aria-label="Basic example">

  <button type="button" class="btn btn-secondary btn-lg "
   onclick="location.href='../manager/manager.html'">　　　　　　　주 문 대 기 열　　　　　　　</button>
   
  <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button"
     class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">　　　설 정　　　</button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="">방문자 확인</a>
      <a class="dropdown-item" href="">뭘 할 까 ?</a>
      <a class="dropdown-item" onclick="logoutcheck()">로그아웃</a>
    </div>
</div>
<div align="right" style="width: 100%;">
<div style="display:flex;"><h4><b>시간 매니저 EDT</b></h4>&emsp;

<form action="../manager/manager.html" name="delay">
<input type="text" size="7" name="delay" value="${delay }"/>&emsp;
<button id="btn-signup" class="btn btn-warning">설정</button>
</form>
</div>
</div>

</div>
</div>


</div> 

  </head>

     <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100" align="center">
	

	<c:choose>
		<c:when test="${BODY != null}">
			<jsp:include page="${BODY }"/>
		</c:when>
	</c:choose>
	



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
   
   
</body>
</html>