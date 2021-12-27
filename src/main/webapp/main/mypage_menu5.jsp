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

	function Check(frm){
	
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
		
		if(confirm("입력한 내용이 맞습니까?")){return;}
		else {return false;}
		
		return false;
		
	}
		function deletes(){
			
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
			
			if(confirm("계정을 탈퇴하시겠습니까?")){
				return location.href='../mypageupdate/delete.html';}
			
			
		}
	
	</script>
	
	<div align="center">
	<form:form name="frm" modelAttribute="user" method="post"  action="../mypageupdate/update.html" onSubmit="return Check(this)">
		<div align="center" style="width:50rem; border-radius:50px;">
		<div class="card-title" style="margin-top:60px;">
		<h2 class="card-title text-center" style="color:#113366;">
		개인 정보 수정</h2>
		</div>
		<br/><br/><br/><br/><br/>
	
		<div><b>N A M E </b><form:input path="user_name" class="form-control" value="${name}" placeholder="NAME"/></div>
   		<br/><br/>
   		<b>P W </b><form:password path="user_password" class="form-control" placeholder="PW"/>
   		<br/><br/>
   		<b>P W  C H E C K </b><input type="password" name="CONFIRM" class="form-control" placeholder="PW Check" >
   		<br/><br/>
   		<b>P H O N E </b><form:input path="user_phone" class="form-control" value="${phone }" placeholder="PHONE"/>
   		<br/><br/>
   		
   		<b>E M A I L </b><form:input path="user_email" class="form-control" value="${email }" placeholder="EMAIL"/>
   		<br/><br/>
   		
   		<b>A D D R E S S </b><form:input path="user_address" class="form-control" value="${address }" placeholder="ADDRESS" />
   		<br/><br/>

 		<br/><br/>
 		
        <input type="submit" class="btn btn-lg btn-primary " value="내 정보 저장"/>
        
        <button type="button" class="btn btn-lg btn-primary" onclick="return deletes(this)">계정 탈퇴</button>
        
		</div>
		
       </form:form>
       </div>
        


  
</body>
</html>