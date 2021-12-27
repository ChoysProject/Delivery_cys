<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
	prefix="fmt" %>  
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
  <style type="text/css">
  table{
border-spacing:10px;
}
td { 
	  
      valign=middle;
      
        }
  </style>
  
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainLogin.css">
    <title>Cho's Delivery</title>
  </head>

  <body>
  <script type="text/javascript">
  function Check(frm){
	  
	  if( !frm.delivery_type[0].checked && !frm.delivery_type[1].checked&& !frm.delivery_type[2].checked&& !frm.delivery_type[3].checked){
		alert("���� ����� �������ּ���.");
		return false;
	  }
	  if(confirm("������ ����մϴ�.")){
		  return;
	  }else {return false;}
	  return false;
  }
  </script>

  
  
  
  <br/><br/><br/><br/>
	
	<br/><br/>
	<div class="card" style="width:150rem; border-radius:50px;">
	<div class="card-title" style="margin-top:60px;">
		<br/><br/>
		<h2 class="card-title text-center" style="color:#113366;">�� �� �� �� ��</h2>
		<br/><br/>
		<hr width="100%" border-top: 3px dotted blue;>
		<br/><br/>
		
		
		
		<c:choose>
		<c:when test="${CART_LIST == null || SIZE == 'NO' }">
				<br/><br/><br/><br/>
				<div align="center">
				<h1><b>������ �޴��� ��� ���� �� �� �����ϴ�.</b></h1><br/><br/><br/><br/><br/><br/><br/>
				</div>
		<div align="center">
			<button id="btn-signup" class="btn btn-lg btn-primary btn-block"
			onclick="location.href='../costomer/menu1.html?BODY=co_main.jsp'">M A I N</button>
		</div>
		</c:when>
		<c:otherwise>
		
		
		
		


<form name="frm" action="../checkout/insert.html" onSubmit="return Check(this)">
<div style="float:left; height: auto;">
<c:forEach var="cart" items="${CART_LIST }">

 	<table class="table" border="1">
		<tr align="center" border="1">
		<td width="310"><img alt="" src="${cart.mybasket_picture }"></td>
		<td width="220"><br/><br/><br/><h4><b>${cart.mybasket_name }</b></h4></td>
		<td width="180"><br/><br/><br/><h4><b>${cart.mybasket_price } ��</b></h4></td>
		<td width="180"><br/><br/><br/><h4><b>${cart.num } ��</b></h4></td>
		<td width="180"><br/><br/><br/><h4><b>${cart.mybasket_calorie } Kal</b></h4></td>
		<td width="200"><br/><br/><br/><h4><b>�� ${cart.mybasket_price * cart.num } ��</b></h4></td>
		</tr>
	</table>





	


<input type="hidden" name="code" value="${cart.code }"/>
<input type="hidden" name="delivery_menuname" value="${cart.mybasket_name }"/>
<input type="hidden" name="delivery_some" value="${cart.num }"/>


</c:forEach>

<input type="hidden" name="delivery_id" value="${user_id }"/>
<input type="hidden" name="delivery_number" value="${delivery_number }"/>
<input type="hidden" name="delivery_name" value="${user_name }"/>
<input type="hidden" name="delivery_price" value="${total }"/>
<input type="hidden" name="delivery_phone" value="${user_phone }"/>
<input type="hidden" name="delivery_address" value="${user_address }"/>

</div>
<div style="float:left; height: auto;">
	<table class="table">
		<tr>
		
		<td><h2><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		�� �� �� ��</b></h2><br/><br/></td>
		
		</tr> 
		<tr>
		
		<td><h3><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		${user_id }�� ! <br/><br/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		 �Ʒ��� Ȯ�����ּ���.</b></h3><br/><br/>
		<h4><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		�� �� �� : ${user_name }</b></h4><br/>
		<h4><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		Phone : ${user_phone }</b></h4><br/>
		<h4><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		�� �ּ� : ${user_address }</b></h4><br/>
		
		<h4><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		Ư �� �� ��</b></h4><br/>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<textarea rows="10" cols="70" name="delivery_note">
		</textarea>
		<h5><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; ex) �������� �ް�;��.</b></h5>
		<h5><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; ex) ������ ���� �����ϴ�.</b></h5>
		</tr>
		
		<tr>
		
		<td><h3><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		�������</b></h3><Br/>
		<hr width=100% border-top: 3px dotted blue;><br/>
		<h4><b>&emsp;&emsp;&emsp;&emsp;
		�¶��� ����</b></h4>
		<hr width=100% border-top: 3px dotted blue;>
		&emsp;&emsp;&emsp;&emsp;
		<input type="radio" name ="delivery_type" value="�¶��� ������"/>
		<b>&emsp;�ſ�ī�� / ������� / ��Ÿ</b>
		<hr width=100% border-top: 3px dotted blue;><br/>
		
		<h4><b>&emsp;&emsp;&emsp;&emsp;
		���� ����</b></h4>
		<hr width=100% border-top: 3px dotted blue;>
		&emsp;&emsp;&emsp;&emsp;
		<input type="radio" name ="delivery_type" value="����"/>
		<b>&emsp;����</b><br/>
		
		&emsp;&emsp;&emsp;&emsp;
		<input type="radio" name ="delivery_type" value="ī��"/>
		<b>&emsp;ī��</b><br/>
		
		&emsp;&emsp;&emsp;&emsp;
		<input type="radio" name ="delivery_type" value="��ǥ"/>
		<b>&emsp;��ǥ</b>
		<Br/><br/><br/><br/>
		
		
		
		<h3><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		�Ѿ� : �� ${total } ��</b></h3>
		
		<br/><br/>
		<div align="center">
			<button id="btn-signup" name="BTN" value="����" class="btn btn-lg btn-primary">�� �� �� ��</button>
			<button type="button" id="btn-signup" class="btn btn-lg btn-primary"
			onclick="location.href='../cart/show.html'">�� �� �� ��</button>
		</div>
		</td>
		</tr>

	</table>

</div>


		</form>
		</c:otherwise>
		</c:choose>

	</div>
	</div>

</body>
</html>