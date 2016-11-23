<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Random" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试你的情商</title>
</head>
<body>

<jsp:useBean id="status" class="com.my.Status" scope="session" />
<form action="showInfo.jsp" method="post">
<%
Random rand=new Random();
int i=rand.nextInt(3);

String test = status.getZhuangkuang().get(i);
ArrayList<String> xuanxiang = status.getMiaomiaomiao().get(test);
out.println("<h1>这是第"+i+"个问题 </h1>");
out.println("<h1>"+ test + "你应该怎么回答 </h1>");

 // for(int i = 0; i < 4; i++){
//	String neiRong = xuanxiang.get(i);
//	String num = String.valueOf(i);
//	out.print("<p><input type='radio' name='phone' value='+'" + num + "'>'" + neiRong + "</input></p>");

out.print("<p><input type='radio' name='phone' value='0'>" + xuanxiang.get(0) + "</input></p>");
out.print("<p><input type='radio' name='phone' value='1'>" + xuanxiang.get(1) + "</input></p>");
out.print("<p><input type='radio' name='phone' value='2'>" + xuanxiang.get(2) + "</input></p>");
out.print("<p><input type='radio' name='phone' value='3'>" + xuanxiang.get(3) + "</input></p>");
 
%>

<input type="submit"></input>
</form>

</body>
</html>