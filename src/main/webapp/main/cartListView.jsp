<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
table{
border-spacing:10px;
}
body{
	margin:0px;
	padding:0px;
}
.garo{
display:flex;
}

.sizes1{
flex:1;
}
.sizes2{
flex:5;  
}
td { 
	  
      valign=middle;
      
        }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<Br/><Br/><br/>
		<h2 class="card-title text-center" style="color:#113366;">��ٱ��� ���</h2>
	
		<br/><br/><br/><br/><br/>
		<hr width="100%" border-top: 3px dotted blue;>
	<c:choose>
	
		<c:when test="${CART_LIST == null || SIZE == 'NO' }">
				<br/><br/><br/><br/>
				<div align="center">
				<h1><b>��ٱ��ϰ� ������ϴ�.</b></h1><br/><br/><br/><br/><br/><br/><br/>
				</div>
		</c:when>
		<c:otherwise>
		
		<c:forEach var="cnt" items="${CART_LIST }">
		<form action="../cart/modify.html" method="post">
		
		<table class="table" border="1"><tr align="center">
			<input type="hidden" name="CODE" value="${cnt.code }"/>
			<td width="310"><img alt="" src="${cnt.mybasket_picture }"></td>
			<td width="200"><br/><br/><br/><h4><b>${cnt.mybasket_name }<b/></h4></td>
			<td width="180"><br/><br/><br/>
			<h4><b>
			${cnt.mybasket_price } ��</b></h4></td>
			
			<td width="180"><br/><br/><br/><h4><b><input type="text" size="3"
					name="NUMBER" value="${cnt.num } "/> ��</b></h4></td>
			<td width="250"><br/><br/><br/><h4><b>���� ${cnt.mybasket_calorie } Kal</b></h4></td>
			<td width="250"><br/><br/><br/><h3><b>�� ${cnt.mybasket_price * cnt.num } ��</b></h3>
			</td>
			<td width="200">
			<div display="flex"><br/><br/><br/>
			<button name="BTN" class="btn btn-warning" value="����"> �� �� </button>&nbsp;
			<button name="BTN" class="btn btn-warning" value="����"> �� �� </button>
			</div>
			
			</td></tr>
			</table>
			
			</form>
		</c:forEach>
			
		</c:otherwise>
	</c:choose>
	
	<form action="../checkout/checkout.html" method="post">
	<div align="center">
<h3><b>�� �� :
	�� ${totalAmount }��</b></h3>
	<br/>
	<input type="hidden" name="TOTAL" value="${totalAmount }"/>
	<button class="btn btn-warning btn-lg"><b> �� �� </b></button>
	</div>
</form>	





</body>
</html>