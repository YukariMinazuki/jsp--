<%@page import="com.my.MikuSama"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>接受审判吧少年</title>
</head>
<body>
<% 
MikuSama gf = (MikuSama)session.getAttribute("myMiku");
String phone = request.getParameter("phone");


int nuqi = gf.getNuqi();
int haogan = gf.getHaogan();


if(phone.equals("0")){
	nuqi = nuqi + 10 ;
}else if(phone.equals("1")){
	nuqi = nuqi + 30;
}else if(phone.equals("2")){
	haogan = haogan + 20;
}else{
	nuqi = nuqi + 10;
	haogan = haogan + 10;
}

gf.setNuqi(nuqi);
gf.setHaogan(haogan);


if(gf.getNuqi() > 50){
	out.print("<h1>恭喜你，重新回归单身狗</h1>");
	out.print("怒气："+ gf.getNuqi() + "好感：" + gf.getHaogan());
}else if(gf.getHaogan() > 100){
	out.print("<h1>恭喜你们步入爱情的坟墓~</h1>");
	out.print("怒气："+ gf.getNuqi() + "好感：" + gf.getHaogan());
}else if(gf.getNuqi( )>= 0){
	out.print("<h1>少年你要小心哦，mikusama的怒气已经达到" + gf.getNuqi()+"</h1>");
	out.print("怒气："+ gf.getNuqi() + "好感：" + gf.getHaogan());
	if(gf.getHaogan() > 0){
		out.print("<h1>哎哟不错哟 </h1>");
		out.print("怒气："+ gf.getNuqi() + "好感：" + gf.getHaogan());}
	    out.print("<p><a href='status.jsp'>继续测试</a></p>");
}
%>


</body>
</html>