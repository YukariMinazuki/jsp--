<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "com.lol.Hero" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
   Hero hero = (Hero)request.getAttribute("hero");
%>

<%=hero.getName() %>
<%=hero.getNickName() %>

<a href = "http://localhost:8080/jsp-work/hero?id=<%=hero.getId() %>&is_change=true">修改</a>
</body>
</html>