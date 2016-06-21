<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-xs-4">
			<a class="btn btn-danger btn-lg" href="${pageContext.request.contextPath}/choice">
				<span class="fa fa-pencil-square-o"></span> <br/>Créer un nouveau Quiz
			</a>
		</div>
	</div>

	<!-- Related Projects Row -->
	<div class="row">

		<div class="col-lg-12">
			<h3 class="page-header" translate="PUBLISH_QUIZ"></h3>
		</div>
		<c:if test = "${quizs.isEmpty()}">
			<div class="col-sm-3 col-xs-6">
				<span translate="NO_PUBLISH_QUIZ"></span>
			</div>
		</c:if>
		<c:forEach items="${quizs}" var="quiz">
			<div class="col-sm-3 col-xs-6">
				<div > 
				${quiz.title}
				<img class="img-responsive portfolio-item"
					src="<c:url value='/resources/img/cover-placeholder.jpg'/>" alt=""  title="">
				</div>
			</div>
		</c:forEach>	
		
		
		<div class="col-lg-12">
			<h3 class="page-header" translate="DRAFT_QUIZ"></h3>
		</div>
		<c:if test = "${draftQuizs.isEmpty()}">
			<div class="col-sm-3 col-xs-6">
				<span translate="NO_DRAFT_QUIZ"></span>
			</div>
		</c:if>
		<c:forEach items="${draftQuizs}" var="quiz">
			<div class="col-sm-2 col-xs-6 img-thumbnail"  style="margin: 5px;">
				<div > 
				${quiz.title}
				<img class="img-responsive portfolio-item"
					src="<c:url value='/resources/img/cover-placeholder.jpg'/>" alt=""  title="">
				</div>
			</div>
		</c:forEach>	

		

	</div>
	<!-- /.row -->

	<hr>

</div>


