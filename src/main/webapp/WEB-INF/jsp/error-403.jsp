<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="net.java_school.user.User" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<title>403</title>
<link rel="stylesheet" href="/css/screen.css" type="text/css" />
<script type="text/javascript" src="/js/jquery-3.0.0.min.js"></script>
</head>
<body>
<div id="wrap">

    <div id="header">
     	<h1 style="float: left; width:150px;"><a href="/"><img src="/images/ci.gif" alt="java-school logo" /></a></h1>
    	<div id="memberMenu" style="float: right;position: relative; top: 7px;">
    	<!-- 뷰 레벨 인증을 에러 페이지에 쓸 수 없다. -->
    	</div>
    </div>
    
    <div id="main-menu">
    	<%@ include file="inc/main-menu.jsp" %>
    </div>
    
	<div id="container">
		<div id="content">
			<div id="url-navi">error-403</div>
			<h1>Error 403</h1>
			Access is Denied.
		</div>
	</div>
    
	<div id="sidebar">
		<h1>Error</h1>
	</div>
    
	<div id="extra">
		<%@ include file="inc/extra.jsp" %>    
	</div>
    
    <div id="footer">
    	<%@ include file="inc/footer.jsp" %>
    </div>
        
</div>

</body>
</html>
