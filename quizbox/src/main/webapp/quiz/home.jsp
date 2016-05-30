<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	
	<div class="row" ng-controller="animationCtrl">
		<div class="col-xs-4">
			<a class="btn btn-danger btn-lg" ng-click="animation = !animation"
						ng-class="{ active: animation }">
				<span class="fa fa-pencil-square-o"></span> <br/>Cr�er un nouveau Quiz
			</a>
		</div>
		{{animation}}
		<div class="col-xs-6">
			<div ng-show="animation">
				<a href="#/form" class="btn btn-warning btn-lg" ng-click="animation = !animation"
						ng-class="{ active: animation }">
				<span class="fa fa-user-secret"></span> <br/>Quiz D'�valuation
				</a>
				
				<a href="#/form" class="btn btn-warning btn-lg" ng-click="animation = !animation"
						ng-class="{ active: animation }">
				<span class="fa fa-newspaper-o"></span> <br/>Quiz de Profil
				</a>
			</div>
		</div>
	</div>

	<!-- Related Projects Row -->
	<div class="row">

		<div class="col-lg-12">
			<h3 class="page-header">Mes Quiz Publi�s</h3>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/500x300" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/500x300" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/500x300" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-6">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/500x300" alt="">
			</a>
		</div>

	</div>
	<!-- /.row -->

	<hr>

</div>


