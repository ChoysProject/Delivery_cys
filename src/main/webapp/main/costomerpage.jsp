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
    		
    	}else{return false;}
    	
    }
    
    </script>
    
    
    
   <title>Cho's Delivery</title>
    
    	<div class="card align-middle" style="width:100rem; border-radius:100px;">
		<div class="card-title" style="margin-top:90px;">
			<h2 class="card-title text-center" style="color:#113366;">
			Welcome to Cho's Delivery</h2>
			</div>
		
<br/><br/>


<div id="header">

<div class="btn-group-justified" align="center" role="group" aria-label="Basic example">

  <button type="button" class="btn btn-secondary btn-lg "
   onclick="location.href='../costomer/menu1.html?BODY=co_main.jsp'">　　　　　　　MAIN　　　　　　　</button>
   
   
   
  <div class="btn-group" role="group">
  
   <div class="btn-group" role="group">
    <button id="btnGroupDrop0" type="button"
     class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
     　　　　　　　M E N U　　　　　　　</button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="../costomer/menu2.html?BODY=co_menu.jsp">　●　추천메뉴</a>
      <a class="dropdown-item" href="../costomer/co_menu_2.html?BODY=co_menu_2.jsp">　●　햄버거</a>
      <a class="dropdown-item" href="../costomer/co_menu_3.html?BODY=co_menu_3.jsp">　●　스낵 & 사이드</a>
      <a class="dropdown-item" href="../costomer/co_menu_4.html?BODY=co_menu_4.jsp">　●　음료</a>
      <a class="dropdown-item" href="../costomer/co_menu_5.html?BODY=co_menu_5.jsp">　●　디저트</a>
    </div>
  </div>


 
 <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button"
     class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">　　　　　　　MY PAGE　　　　　　　</button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="../costomer/mypage_menu1.html?BODY=mypage_menu1.jsp">주문조회</a>
      <a class="dropdown-item" href="../costomer/mypage_menu2.html?BODY=mypage_menu2.jsp">주문내역</a>
      <a class="dropdown-item" href="../costomer/mypage_menu3.html?BODY=mypage_menu3.jsp">즐겨찾기 메뉴</a>
      <a class="dropdown-item" href="../cart/show.html?BODY=mypage_menu4.jsp">장바구니</a>
      <a class="dropdown-item" href="../costomer/mypage_menu5.html?BODY=mypage_menu5.jsp">내 정보 수정</a>
      <a class="dropdown-item" onclick="logoutcheck()">로그아웃</a>
    </div>
</div>

 
 

 
<div class="btn-group" role="group">
    <button id="btnGroupDrop2" type="button"
     class="btn btn-secondary btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">　　　INFORMATION　　　</button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="../costomer/information1.html?BODY=information1.jsp">이용약관</a>
      <a class="dropdown-item" href="../costomer/information2.html?BODY=information2.jsp">개인정보 취급방침</a>
      <a class="dropdown-item" href="../costomer/information3.html?BODY=information3.jsp">자주 묻는 질문</a>
      <a class="dropdown-item" href="../costomer/information4.html?BODY=information4.jsp">원산지 표시판</a>
    </div>
</div>
</div>
</div> 

  </head>

     <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100" align="center">
	
		<c:choose>
			<c:when test="${BODY == null }">
				<jsp:include page="co_main.jsp"/>
			</c:when>
			<c:otherwise>
				<jsp:include page="${BODY }"/>
			</c:otherwise>
		</c:choose>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
   
   
</body>
 
</html>