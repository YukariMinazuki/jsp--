<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.yukari.MessageBean" %>
<%@page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示留言板内容</title>
</head>
<body background="image/f.jpg">
   <%
      ArrayList wordlist = (ArrayList)request.getAttribute("wordlist");
     if(wordlist==null||wordlist.size()==0){
    	  out.print("没有留言可显示！");
      }else{
    	  for(int i=wordlist.size()-1;i>=0;i--){
    		  MessageBean mm = (MessageBean)wordlist.get(i);
   
   %>
   
   留 言 者：<%=mm.getAuthor() %>
 <br><br>
   留言时间：<%=mm.getTime() %>
 <br><br>
   留言标题：<%=mm.getTitle() %>
 <br><br>
   留言内容：<textarea rows="8" cols="30" readonly>
   <%=mm.getContent() %>
   </textarea>
   <a href="messageBoard.jsp">我要留言</a>
   <hr width="90%">
   <%
    	  }
    	  }
   %>

</body>
</html>