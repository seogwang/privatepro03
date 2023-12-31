<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path999" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자료실 글쓰기</title>
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
	      <h2 class="h1">자료실 글쓰기</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path999 }/guestbook/insert.do" id="writeform" method="post" enctype="multipart/form-data">
				<div class="control">
					<label for="subject">제목:</label>
					<input type="text" class="input" id="subject" name="subject">
				</div>
				<div class="control">
					<label for="content">내용:</label>
					<textarea class="textarea" rows="15" id="content" name="content"></textarea>
				</div>
				<div class="control">
					<div class="file">
						<label class="file-label">
							<input class="file-input" type="file" name="upfile" multiple="multiple">
							<span class="file-cta">
							  <span class="file-icon">
								<i class="fas fa-upload"></i>
							  </span>
							  <span class="file-label">
								파일 선택…
							  </span>
							</span>
						</label>
					</div>
				</div>
				<button type="button" id="writeBtn" class="button is-primary">글작성</button>
				<button type="reset" class="button is-info">초기화</button>
			   </form>   
	      </div>
	    </div>
	</div>
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>