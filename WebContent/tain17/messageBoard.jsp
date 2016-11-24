<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>留言板页面</title>
</head>
<body background="image/f.jpg">
  <form action = "AddMessageServlet" method="post">
     留  言  者：<input type="text" name="author" size="28" />
     <br><br>
     留言标题：<input type="text" name="title" size="28" />
     <br><br>
     留言内容：<textarea rows="8" name="content" cols="30"></textarea>
     <br>
     <p>
     <input type="submit" value="提交" />
     <input type="reset" value="重置" />
     <a href="showMessage.jsp">查看留言</a>   
  </form>

</body>
</html>