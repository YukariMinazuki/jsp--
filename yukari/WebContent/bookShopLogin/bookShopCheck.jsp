<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>已购书信息</title>
</head>

<body>
<jsp:useBean id="book"  scope="session" class="jsp.BookShopBean"></jsp:useBean>
<jsp:setProperty name="book" property="*" />
<%
     book.processRequest(request);
%>
<br>您已选购的书有：
<ol>
<%
String[] items=book.getItems();
for(int i = 0;i<items.length;i++){
%>
<li><%=items[i] %></li>
<%
}
%>
</ol>
<br>
<hr>
<%@include file = "bookShop.jsp" %>
</body>
</html>