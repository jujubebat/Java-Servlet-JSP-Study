<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl 라이브러리 사용설정 -->
<c:set var="value1" scope = "request" value ="Park"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

성 : ${value1 } <br>
성 : ${requestScope.value1 } <br><br> <!-- 명시적인 표현 -->

<c:remove var="value1" scope="request"/> <!-- jstl 닫는 태그를 이렇게 간략히 표현할 수 있다. -->

성 : ${value1 } <br>
성 : ${requestScope.value1 } <br> <!-- 명시적인 표현 -->
</body>
</html>