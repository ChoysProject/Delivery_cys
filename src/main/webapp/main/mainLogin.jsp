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
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
    <title>Cho's Delivery</title>

  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	
	<script type="text/javascript">
	function idpwCheck(login){
		if(document.login.user_id.value==""){
			alert("ID를 입력하세요.");
			document.login.user_id.focus();
			return false;
		}
		if(document.login.user_password.value==""){
			alert("PW를 입력하세요.");
			document.login.user_password.focus();
			return false;
		}
		return;
	}
	
	</script>
	

	<div class="card align-middle" style="width:20rem; border-radius:20px;">

		<div class="card-title" style="margin-top:30px;">
			<h2 class="card-title text-center" style="color:#113366;">Cho's Delivery</h2>
		</div>
		<div class="card-body">
		
		
		
	
	<form:form name="login" class="form-signin" modelAttribute="user" method="post" onsubmit="return idpwCheck(this)"

	action="../login/connect.html" >
	
        <h5 class="form-signin-heading">환영합니다.</h5>
        
        
        <label for="inputEmail" class="sr-only">Your ID</label>
        <form:input path="user_id" class="form-control" placeholder="Your ID"/><BR>
        
        <label for="inputPassword" class="sr-only">Password</label>
        <form:password path="user_password" class="form-control" placeholder="Password"/><br>


            <label>
             &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
           	<button id="btn-signup" type="button" class="btn btn-primary" 
           	onclick="location.href='../login/userentry.html'">회원가입</button>
          </label>

            
      <input type="submit" class="btn btn-lg btn-primary btn-block" value="로 그 인" ><br/>
        
      </form:form>
		</div>
			
	</div>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
</html>