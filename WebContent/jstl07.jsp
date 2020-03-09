<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="t" value="<script type='text/javascript'>alert(1);</script>"></c:set>
<c:out value="${t }" escapeXml="true"></c:out> <!-- 자바스크립트가 실행됨 >, <, &, ', " 등의 문자가 html로 인식되지 않게됨. 그냥 문자 그대로 인식됨. -->
<c:out value="${t }" escapeXml="false"></c:out> <!-- 자바스크립트가 실행되지 않음 -->

</body>
</html>