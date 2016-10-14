<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>request对象应用实例2_考试系统</title>
</head>
<body>
<h3>第6章测试题</h3>
<hr>
<form action="requestHandle2.jsp" method="get">
1.response对象的setHeader(String name,String value)方法的作用是( )。<br>
<input type="radio" name="1" value="A">添加HTTP文件头<br>
<input type="radio" name="1" value="B">设定制定名字的HTTP文件头的值<br>
<input type="radio" name="1" value="C">判断指定名字的HTTP文件头是否存在<br>
<input type="radio" name="1" value="D">向客户端发送错误信息<br>
2.我是谁<br>
<input type="radio" name="2" value="A">你猜<br>
<input type="radio" name="2" value="B">人类<br>
<input type="radio" name="2" value="C">电脑AI<br>
<input type="radio" name="2" value="D">新世界的神<br>
3.你是谁(正确答案是你是笨蛋)<br>
<input type="radio" name="3" value="A">我不告诉你<br>
<input type="radio" name="3" value="B">我是新世界的神<br>
<input type="radio" name="3" value="C">我是笨蛋<br>
<input type="radio" name="3" value="D">我就不告诉你<br>
4.世界是谁<br>
<input type="radio" name="4" value="A">全世界的世界<br>
<input type="radio" name="4" value="B">是一个人名<br>
<input type="radio" name="4" value="C">都是世界的错！<br>
<input type="radio" name="4" value="D">是时辰<br>
<input type="submit" value="考试完成">
</form>

</body>
</html>