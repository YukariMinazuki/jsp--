<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.lol.Hero"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>英雄联盟</title>
</head>
<body>
<div class="container">
<%
Hero hero = (Hero)request.getAttribute("hero");
Integer id = null;
String name = "";
String nick_name = "";
String avatar = "";
String image = "";
String desc = "";
String title = "添加英雄";
%>

<c:if test="${hero != null}">
     <%
     id = hero.getId();
	name = hero.getName();
	nick_name = hero.getNickName();
	avatar = hero.getAvatar();
	image = hero.getImage();
	desc = hero.getDesc();
	title = "修改英雄";
	 %>
</c:if>


<h1 class="center">
<%=title %>
</h1>

<form action="/jsp-work/hero" method="post" class="form-horizontal"  role="form">
<div class="form-group">
<label for="id" class="col-sm-2 control-label">英雄编号</label>
<div class="col-sm-10">
<input name="id" type="text" class="form-control"  id="id" placeholder="id" value="<%=id %>" />
</div>
</div>

<div class="form-group">
<label for="name" class="col-sm-2 control-label">英雄姓名</label>
<div class="col-sm-10">
<input name="name" type="text" class="form-control"  id="name" placeholder="name" value="<%=name %>" />
</div>
</div>

<div class="form-group">
<label for="nickname" class="col-sm-2 control-label">昵称</label>
<div class="col-sm-10">
<input name="nickName" type="text" class="form-control"  id="nickName"  placeholder="nickName" value="<%=nick_name %>" />
</div>
</div>

<div class="form-group">
<label for="avatar" class="col-sm-2 control-label">英雄头像</label>
<div class="col-sm-10">
<input name="avatar" type="text" class="form-control"  id="avatar" placeholder="avatar" value="<%=avatar %>" />
</div>
</div>

<div class="form-group">
<label for="image" class="col-sm-2 control-label">英雄背景</label>
<div class="col-sm-10">
<input name="image" type="text" class="form-control"  id="image" placeholder="image" value="<%=image %>" />
</div>
</div>

<div class="form-group">
<label for="desc" class="col-sm-2 control-label">故事背景</label>
<div class="col-sm-10">
<textarea name="desc"  class="form-control"  rows="3"><%=desc %></textarea>
</div>
</div>

<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button type="submit" class="btn btn-success">保存</button>
</div>
</div>

</form>


</div>

</body>
</html>