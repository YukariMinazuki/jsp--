<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session对象应用实例3--购物</title>
</head>
<body>
<%
String na=request.getParameter("loginName");
session.setAttribute("name",na);
%>
<h3>请输入想购买的商品：</h3>
<hr>
<form action="account.jsp" method="post">
要购买的商品：<br>
<input type="radio" name="1" value="java shi laji">《java入门--从入门到放弃》<br>
<input type="radio" name="1" value="jsp shi laji">《jsp入门--从入门到放弃》<br>
<input type="radio" name="1" value="css shi laji">《css入门--从入门到放弃》<br>
<input type="radio" name="1" value="php shi laji">《php入门--从入门到放弃》<br>
<input type="submit" value="我就买这些了">
<input type="button" value="我什么都不买！">
</form>

</body>
</html>