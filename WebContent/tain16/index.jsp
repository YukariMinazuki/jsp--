<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在你心目里的老婆</title>
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
<form action="showMiku.jsp" method="post">
   <p>可爱值：<input type="text" name="keai"></p>
   <p>美丽值：<input type="text" name="meili"></p>
   <p>体贴值：<input type="text" name="titie"></p>
   <p>怒气值：<input type="text" name="nuqi"></p>
   <p>好感度：<input type="text" name="haogan"></p>
   
   <button type="submit">是时候开始测试了</button>  
</form>
</div>
</body>
</html>