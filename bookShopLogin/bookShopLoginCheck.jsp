<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<jsp:useBean id="username" class="jsp.UserInfoBean"  scope="session"/>
<jsp:setProperty name="username" property="*" />

<title>在线购书系统-处理登录的页面</title>
</head>
<body>
	<%
    if(username.getUserName().equals("qq") && username.getPassword().equals("123")){%>
	<jsp.param name="userName" value="<%=username.getUserName() %>" />
	<jsp:forward page="bookShop.jsp" />
	<%
      } else {
      %>
	<jsp:forward page="bookShopLogin.jsp" />
		<%
      }
      %>

</body>
</html>