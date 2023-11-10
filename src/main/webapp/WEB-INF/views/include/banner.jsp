<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path999" value="<%=request.getContextPath() %>" />

<figure class="visual" id="vs1">
    <ul class="imgbox">
        <li class="hero is-medium is-link">
            <div class="hero-body" style="background-size: 100%; background-image: url('${path999}/resources/img/backgroundmk.jpg'); background-position: 0px -270px;">
                <p class="title" style="color: white; font-weight: bold; padding-top: 70px;">
                    TSPOON
                </p>
                <p class="subtitle" style="color: white; font-weight: bold; ">
                    내 아이의 하루를 담다.<br>
                    부모의 하루를 열다.<br>
                </p>
            </div>
        </li>
    </ul>
</figure>