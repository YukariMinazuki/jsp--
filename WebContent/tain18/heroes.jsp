<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.lol.Hero"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-striped">
			<tr class="success">
				<th>名字</th>
				<th>昵称</th>
			</tr>


			<%
ArrayList<Hero> heroes = (ArrayList<Hero>) request.getAttribute("heroes");
for(Hero hero:heroes){
%>
			<tr>
				<td><a href="http://localhost:8080/jsp-work/hero?id=<%=hero.getId() %>"> <%=hero.getName() %>
				</a></td>
				<td><%=hero.getNickName() %></td>
			</tr>
			
<%
}
%>
		</table>
	</div>
</body>
</html>