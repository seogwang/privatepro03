<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path999" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>티스푼 메인 페이지</title>
    <style>
        #vs1 .imgbox { border-radius: 50px; }
    </style>
    <jsp:include page="./include/head.jsp" />
</head>
<body>
<div class="container is-fullhd">
    <jsp:include page="./include/hd.jsp" />
    <jsp:include page="./include/banner.jsp" />
    <div class="contents">
        <!-- ${today } <h2>${myName }</h2><hr> -->
        <div class="columns loginModule">
            <div class="column"></div>
            <div class="column"></div>
            <jsp:include page="./include/loginModule.jsp" />
        </div>
    </div>
    <jsp:include page="./include/ft.jsp" />
</div>
</body>
</html>