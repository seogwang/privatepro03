<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path999" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시판 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="container is-fullhd">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/hd.jsp"></jsp:include>
	<jsp:include page="../include/banner.jsp" />
	<div class="content" id="contents">
	    <div class="row column text-center">
	      <h2 class="h1">당첨자 게시판 목록</h2>
	      <hr>
	      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th>No</th>
		      			<th>Title</th>
		      			<th>RegDate</th>
		      			<th>Visited</th>
		      		</tr>
		      	</thead>
		      	<tbody>
				<c:if test="${not empty winnerList }">
		      	<c:forEach items="${winnerList }" var="winner" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="${path999}/winner/detail.do?bno=${winner.bno }">${winner.title }</a></td>
		      			<td>
	      					<fmt:parseDate value="${winner.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${winner.visited }</td>
		      		</tr>
		      	</c:forEach>
				</c:if>
				<c:if test="${empty winnerList }">
					<tr>
						<td colspan="4">당첨자 게시판에 글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
		      	</tbody>
		      </table>
			      	    <%-- <c:if test='${sid eq "admin"}'>  --%> 
		      	<div class="button-group">
				  <a class="button is-info" href="${path999 }/winner/insert.do">글쓰기</a>
				</div>
			<%-- </c:if> --%>
	      </div>

	    </div>
	</div>
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>