<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Quiz Box</title>
	
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/bootstrap/css/bootstrap.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/style.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/header.css'/>" />
<link rel="stylesheet" href="<c:url value='/resources/font-awesome/css/font-awesome.css'/>" />

<link rel="stylesheet" href="<c:url value='/resources/colorpicker/colorpicker.css'/>" />

</head>
<body ng-app="myApp">
	
	<div ng-include='"<c:url value='/template/header.jsp'/>"'></div>
	<div ng-view></div>
	<div ng-include='"<c:url value='/template/footer.jsp'/>"'></div>

	<script type="text/javascript" src="<c:url value='/resources/js/jquery-2.2.3.min.js'/>" > </script>
	<script type="text/javascript" src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" > </script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js" ></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-route.min.js"></script>
	<script type="text/javascript" src="<c:url value='/scripts/app.js'/>" > </script>
	<script type="text/javascript" src="<c:url value='/scripts/controllers.js'/>" > </script>
	<script type="text/javascript" src="<c:url value='/resources/js/angular-ui-router.min.js'/>" > </script>
	
	<script type="text/javascript" src="<c:url value='/resources/colorpicker/bootstrap-colorpicker-module.min.js'/>" > </script>
	<script type="text/javascript" src="<c:url value='/resources/flow/ng-flow-standalone.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/flow/ng-flow.min.js'/>"></script>
	
</body>
</html>