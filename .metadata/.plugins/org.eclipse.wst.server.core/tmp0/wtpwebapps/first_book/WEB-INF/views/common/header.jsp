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
		<div class="menu-area">
		<div class="nav-area">
			<ul>
				<li><a href="${ pageContext.servletContext.contextPath }">HOME</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/member/login">로그인</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/webnovel/list">웹소설리스트</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/board/list">기능1</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/thmbnail/list">기능 2</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/admin/main">관리자 메인</a></li>
			</ul>
		</div> <!-- nav-area end -->
	</div> <!-- menu-area end -->
	
</body>
</html>