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
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
    <title>Cho's Delivery</title>
  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	
	<script type="text/javascript">
	function idCheck(){
		if(document.frm.user_id.value==""){
			alert("ID를 입력하세요.");
			document.frm.user_id.focus();
			return;
		}
		
		var url="../idcheck/idcheck.html?ID="+document.frm.user_id.value;
		window.open(url,"_blank","width=450,height=200");

	}
	
	function Check(frm){
		
		if(document.frm.user_id.value==""){
			alert("ID를 입력하세요.");
			document.frm.user_id.focus();
			return false;
		}
		
		if(document.frm.user_password.value==""){
			alert("PASSWORD를 입력하세요.");
			document.frm.user_password.focus();
			return false;
		}
		if(document.frm.user_password.value != frm.CONFIRM.value){
			alert("암호가 일치하지않습니다.");
			document.frm.user_password.focus();
			return false;
		}
		if(document.frm.user_name.value==""){
			alert("NAME을 입력하세요.");
			document.frm.user_name.focus();
			return false;
		}
		if(document.frm.user_phone.value==""){
			alert("PHONE을 입력하세요.");
			document.frm.user_phone.focus();
			return false;
		}
		if(document.frm.user_email.value==""){
			alert("EMAIL을 입력하세요.");
			document.frm.user_email.focus();
			return false;
		}
		if(document.frm.user_address.value==""){
			alert("ADDRESS를 입력하세요.");
			document.frm.user_address.focus();
			return false;
		}
		
		if( !frm.user_kind[0].checked &&
				!frm.user_kind[1].checked){
			alert("관리자 or 소비자 선택해주세요.");
			
			return false;
		}
		
		if(confirm("입력한 내용이 맞습니까?")){return;}
		else {return false;}
		
		return false;
		
	}
	</script>
	
	
	<form:form name="frm" modelAttribute="user" method="post" 
		action="../entry/userentry.html" onSubmit="return Check(this)">
		
		<input type="hidden" name="idChecked" id="idChecked"/>

		<div class="card align-middle" style="width:50rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;">
		SIGN UP MEMBERSHIP</h2>
		</div>

	
		<form:input path="user_id" class="form-control" placeholder="ID"/>
		<input type="button" value="중복검사" class="btn btn-primary"
		 onClick="idCheck()"/>
		

   		<br/>
   		<form:password path="user_password" class="form-control" placeholder="PW"/>
   		<br/>
   		<input type="password" name="CONFIRM" class="form-control" placeholder="PW Check" >
   		<br/>
   		
   		<form:input path="user_name" class="form-control" placeholder="NAME"/>
   		<br/>
   		
   		<form:input path="user_phone" class="form-control" placeholder="PHONE"/>
   		<br/>
   		
   		<form:input path="user_email" class="form-control" placeholder="EMAIL"/>
   		<br/>
   		
   		<form:input path="user_address" class="form-control" placeholder="ADDRESS"/>
   		<br/>
   		<label align="center">
   		
   		관리자 가입    <form:radiobutton path="user_kind" value="m"/>&ensp;&ensp;&ensp;&ensp;&ensp;
   		소비자 가입    <form:radiobutton path="user_kind" value="c"/>
   		
 		</label>
 		<br/>
 		<label align="center">
        <input type="submit" class="btn btn-lg btn-primary " value="가입하기"/>
        </form:form>
        
       <input type="button" class="btn btn-lg btn-primary " value="뒤로가기"
       onclick="location.href='../login/mainLogin.html'"/>
       	</label>
		</div>
        
        



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  
  </body>
</html>