<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理登录页面的数据</title>
<body bgcolor="pink">
	<%
		request.setCharacterEncoding("UTF-8");
		session.setAttribute("loginInfo","123");
		String name = request.getParameter("userName");
        String password = request.getParameter("password");
        String info = "" ;
		
		if (request.getParameter("validationCode1").equals(request.getParameter("validationCode"))) {
			if (name.equals("yukari") && (password.equals("666666"))) {
				session.setAttribute("userName", name);
				response.sendRedirect("main.jsp");
			} else {
			    info = "啦啦啦，账号密码出错啦~";
				response.sendRedirect("login.jsp");
			}
		} else {
			info = "啦啦啦，验证码错啦~";
			response.sendRedirect("login.jsp");

		}

		session.setAttribute("loginInfo",info);
	%>

</body>
</html>