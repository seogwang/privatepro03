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
	<title>설문 등록 하기</title>
	<!-- 헤드 부분 인클루드 -->
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="container is-fullhd">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/hd.jsp"></jsp:include>
	<figure class="visual" id="vs1">
		<ul class="imgbox">
			<li class="hero is-medium is-link">
				<div class="hero-body">
					<p class="title">
						Medium hero
					</p>
					<p class="subtitle">
						Medium subtitle
					</p>
				</div>
			</li>
		</ul>
	</figure>
	<div class="content" id="contents">
		<div class="row column text-center">
			<h2 class="h1">설문 등록</h2>
			<hr>
			<div class="container">
				<form name="frm1" id="frm1" action="${path999 }/survey/insert.do" method="post">
					<table id="table1">
						<tbody>
						<tr>
							<th style="background-color:#dcdcdc">제목</th>
							<td>
								<input type="text" name="title" id="title" required style="width:700px; float:left;">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 1 내용</th>
							<td>
								<input type="text" name="q1" id="q1" placeholder="설문 1" required>
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 2 내용</th>
							<td>
								<input type="text" name="q2" id="q2" placeholder="설문 2">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 3 내용</th>
							<td>
								<input type="text" name="q3" id="q3" placeholder="설문 3">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 4 내용</th>
							<td>
								<input type="text" name="q4" id="q4" placeholder="설문 4">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 5 내용</th>
							<td>
								<input type="text" name="q5" id="q5" placeholder="설문 5">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 6 내용</th>
							<td>
								<input type="text" name="q6" id="q6" placeholder="설문 6">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 7 내용</th>
							<td>
								<input type="text" name="q7" id="q7" placeholder="설문 7">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 8 내용</th>
							<td>
								<input type="text" name="q8" id="q8" placeholder="설문 8">
							</td>
						</tr>
						<tr>
							<th style="background-color:#dcdcdc">설문 9 내용</th>
							<td>
								<input type="text" name="q9" id="q9" placeholder="설문 9">
							</td>
						</tr><tr>
							<th style="background-color:#dcdcdc">설문 10 내용</th>
							<td>
								<input type="text" name="q10" id="q10" placeholder="설문 10">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<a class="button is-info" href="${path999 }/survey/list.do">글 목록</a>
								<input type="submit" class="button is-success" value="설문 등록" >
								<input type="reset" class="button is-danger" value="취소" >
							</td>
						</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</div>
</body>
</html>