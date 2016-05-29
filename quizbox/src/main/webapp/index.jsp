<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>${param.title}</title>
	
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/bootstrap/css/bootstrap.css'/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/style.css'/>" />
	
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/header.css'/>" />

<link rel="stylesheet" href="<c:url value='/resources/font-awesome/css/font-awesome.css'/>" />

<script type="text/javascript" src="<c:url value='/resources/js/jquery-2.2.3.min.js'/>" > </script>
<script type="text/javascript" src="<c:url value='/resources/js/jscolor.min.js'/>" > </script>
<script type="text/javascript" src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" > </script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js" ></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.10/angular-ui-router.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>

<script type="text/javascript" src="<c:url value='/scripts/app.js'/>" > </script>
<script type="text/javascript" src="<c:url value='/scripts/controllers.js'/>" > </script>

</head>
<body ng-app="myApp">

	<jsp:include page="/template/header.jsp"/>
	<br />
	<jsp:include page="/quiz/home.jsp"/>
	
	<jsp:include page="/template/footer.jsp"/>
	
</body>
</html>