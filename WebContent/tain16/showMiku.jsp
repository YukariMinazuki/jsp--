<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>miku信息</title>
<!-- 初始化 -->
<jsp:useBean id="myMiku" class="com.my.MikuSama" scope="session" ></jsp:useBean>

<!-- 设置 -->
<jsp:setProperty name="myMiku" property="*" />

<style type="text/css">
div{
width:300px;
height:500px;
margin-left:auto;
margin-right:auto;
margin-top:200px;
}
</style>

</head>
<body>
<div>
<p> Miku的可爱值：<jsp:getProperty name="myMiku" property="keai" /><p>
<p> Miku的美丽值：<jsp:getProperty name="myMiku" property="meili" /><p>
<p> Miku的体贴值：<jsp:getProperty name="myMiku" property="titie" /><p>
<p> Miku的怒气值：<jsp:getProperty name="myMiku" property="nuqi" /><p>
<p> Miku的好感度：<jsp:getProperty name="myMiku" property="haogan" /><p>
<p><a href="status.jsp">开始测试！DA☆ZE~</a></p>
</div>
</body>
</html>