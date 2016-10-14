<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问网上购书系统</title>
</head>
<body>


<div align="center" >
	<table border="1" >
	<form action="bookShopLoginCheck.jsp" method="post">
	    <tr>
	           <td align="center">用户请先登录</td>
	    </tr>
		<tr>
		        <td>用户账号：<input type="text" name="userName" /></td>
		</tr>
		<tr>
		        <td>用户密码：<input type="password" name="password" /></td>
		 </tr>
		 <tr>
		         <td align="center"><button type="submit">提交</button></td>
		 </tr>
	</form>
	</table>
</div>

</body>
</html>