<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 第一题 -->
	<h1>判断生活费</h1>
	<c:set var="money" scope="session" value="${1000}" />
	<c:if test="${money<500}">
             我是一个节约的好孩子
    </c:if>
	<c:if test="${money>500}">
             我是一个节约的好土豪
    </c:if>
	<br>

	<!-- 第二题 -->
	<h1>判断中下旬</h1>
	<c:set var="zxx" scope="session" value="${10}" />
	<c:choose>
		<c:when test="${zxx>=10 }">
             这是上旬
        </c:when>
		<c:when test="${zxx>10 && zxx<=20 }">
             这是中旬
        </c:when>
		<c:otherwise>
             这是下旬
        </c:otherwise>
	</c:choose>
	<br>
	
	<!-- 第三题 -->
	<h1>输出数组的所有值</h1>
	<%  String str[] = {"A", "B", "C", "D", "E"}; 
	        pageContext.setAttribute("str", str);   %>
	<c:forEach items="${str}" var="i">
		<c:out value="${i}" />
	</c:forEach>
	<br>
	
	<!-- 第四题 -->
	<h1>显示时间</h1>
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<fmt:formatDate type="both" value="${now}" />
	
	<!-- 第四题 -->
	<h1>详见tain18/update.jsp</h1>
</body>
</html>