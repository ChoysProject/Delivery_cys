<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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


</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>



<br/><br/><br/>

</head>
<body>
<br/>
<hr width="100%" border-top: 3px dotted blue;>
<br/><br/>

<div align="center"><h1><b>����M E N U����</b></h1></div>
<br/><br/>
<div align="right"><img alt="" class="img-thumbnail" src="../resources/images/1-2-3.png"></div>

<br/><br/>



<div align="center">
<br/><br/>
	<h3><b>�ȳ��ϼ���. ${user_name } ��.</b></h3><br/>
	<h4><b>������ �ּҷ� ��޵˴ϴ�. ${user_address }</b></h4> 
	<h6><b>�� ${delay } �� �� ���� �����Դϴ�.</b></h6>
		<div display="flex">
	<button type="button" class="btn btn-warning" onclick="location.href='../costomer/mypage_menu1.html?BODY=mypage_menu1.jsp'" > �ֹ���ȸ </button>
	<button type="button" class="btn btn-warning btn-lg" ><b> �����ϱ� </b></button>
	<button type="button" class="btn btn-warning" onclick="location.href='../prefer/prefermenu.html?BODY=prefer.jsp'"> ���ã�� </button>
</div>
</div>
<br/><br/><br/><br/>


<div align="center"><h2><b>�� ��</b></h2></div><br/><br/>
<table class="table">
	<tr align="center">
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1506.png">
	<input type="hidden" name="menuname" value="cho �ݶ�">
	<input type="hidden" name="price" value="2000">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1506.png" style=�� display:block;��>  
	<br/><b>cho's �ݶ�<br/> ���� �� 2000<br/>143 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1530.png">
	<input type="hidden" name="menuname" value="cho �����ݶ�">
	<input type="hidden" name="price" value="2000">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1530.png" style=�� display:block;��>  
	<br/><b>cho's �����ݶ�<br/> ���� �� 2000<br/> 0 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1533.png">
	<input type="hidden" name="menuname" value="cho ī���">
	<input type="hidden" name="price" value="3200">
	
	<td>
	<img class="img-thumbnail" src ="../resources/images/1533.png" style=�� display:block;��>  
	<br/><b>cho's ī���<br/> ���� �� 3200<br/> 187 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></tr>
	</form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1540.png">
	<input type="hidden" name="menuname" value="cho ���̽� ī���">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1540.png" style=�� display:block;��>  
	<br/><b>cho's ���̽� ī��� <br/> ���� �� 3200<br/> 109 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1581.png">
	<input type="hidden" name="menuname" value="cho ����">
	<input type="hidden" name="price" value="2200">
	<td><img class="img-thumbnail" src ="../resources/images/1581.png" style=�� display:block;��>  
	<br/><b>cho's ���� <br/> ���� �� 2200<br/> 157 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1630.png">
	<input type="hidden" name="menuname" value="cho �ڵ�ĥ��">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1630.png" style=�� display:block;��>  
	<br/><b>cho's �ڵ�ĥ��<br/> ���� �� 3200<br/> 198 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></tr></form>
	
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1852.png">
	<input type="hidden" name="menuname" value="cho ����ĥ��">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1852.png" style=�� display:block;��>  
	<br/><b>cho's ����ĥ��<br/> ���� �� 3200<br/>209 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1889.png">
	<input type="hidden" name="menuname" value="cho �Ѷ��ĥ��">
	<input type="hidden" name="price" value="3200">
	<td><img class="img-thumbnail" src ="../resources/images/1889.png" style=�� display:block;��>  
	<br/><b>cho's �Ѷ�� ĥ��<br/> ���� �� 3200<br/> 236 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1877.png">
	<input type="hidden" name="menuname" value="cho ��ĥ��">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1877.png" style=�� display:block;��>  
	<br/><b>cho's ��ĥ��<br/> ���� �� 3200<br/> 256 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></tr></form>
	
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1701.png">
	<input type="hidden" name="menuname" value="cho ���� ����ũ">
	<input type="hidden" name="price" value="3200">
	<tr align="center"><td>
	<img class="img-thumbnail" src ="../resources/images/1701.png" style=�� display:block;��>  
	<br/><b>cho's ���� ����ũ<br/> ���� �� 3200<br/> 350 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1702.png">
	<input type="hidden" name="menuname" value="cho ���� ����ũ">
	<input type="hidden" name="price" value="3200">
	<td><img class="img-thumbnail" src ="../resources/images/1702.png" style=�� display:block;��>  
	<br/><b>cho's ���� ����ũ<br/> ���� �� 3200<br/> 344 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></form>
	
		<form action="../menu/select.html" method="get">
	<input type="hidden" name="img" value="../resources/images/1703.png">
	<input type="hidden" name="menuname" value="cho �ٴҶ� ����ũ">
	<input type="hidden" name="price" value="3200">
	<td>
	<img class="img-thumbnail" src ="../resources/images/1703.png" style=�� display:block;��>  
	<br/><b>cho's �ٴҶ� ����ũ<br/> ���� �� 3200<br/> 344 Kcal <br/></b>
	<div display="flex">
	<button class="btn btn-warning"><b>�߰��ϱ�</b></button>
	<button type="button" class="btn btn-warning"><b>��</b></button></div>
	</td></tr></form>
	
	</table>
</body>
</html>