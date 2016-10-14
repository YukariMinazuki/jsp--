<%@ page import="sun.security.jgss.LoginConfigImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<style type="text/css">
body {
	font-size: 16px;
}
</style>
<script type="text/javascript">
	function mycheck() {
		if (form1.userName.value == "") {
			alert("用户名不能为空，请输入用户名！")
			form1.userName.focus();
			return;
		}

		if (form1.password.value == "") {
			alert("密码不能为空，请输入密码！")
			form1.password.focus();
			return;
		}

		if (form1.validationCode.value == "") {
			alert("验证码不能为空，请输入验证码！")
			form1.validationCode.focus();
			return;
		}
		form1.submit1();
	}
</script>
</head>
<body bgcolor="pink">
<form action="loginCheck.jsp" name="form1" method="post">
  用户名:<input type="text" name="userName" size="16">
 <br>
  密&nbsp;码:<input type="password" name="password" size="16">
 <br>
  验证码:<input type="text" name="validationCode" onKeyDown="if(event.keyCode==13){form1.submit.focus();}" size="6">
<%
	int intmethod1 = (int) ((((Math.random()) * 11)) - 1);
		int intmethod2 = (int) ((Math.random() * 11) - 1);
		int intmethod3 = (int) ((Math.random() * 11) - 1);
		int intmethod4 = (int) ((Math.random() * 11) - 1);

		String intsum = intmethod1 + "" + intmethod2 + intmethod3 + intmethod4;
%>
<input type="hidden" name="validationCode1" value="<%=intsum%>">
<img src="./img/<%=intmethod1%>.gif" />
<img src="./img/<%=intmethod2%>.gif" />
<img src="./img/<%=intmethod3%>.gif" />
<img src="./img/<%=intmethod4%>.gif" />
<br>
<input type="submit" name="submit" value="登录" onClick="mycheck()">

<input type="reset" value="重置">
</form>

<%if(session.getAttribute("loginInfo")!=""){%>
<p><%=session.getAttribute("loginInfo")%></p>
<%
	}%>
</body>
</html>