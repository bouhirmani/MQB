
var App = angular.module('myApp',['ngAnimate', 'ngRoute','colorpicker.module','flow']);


App.config(['$routeProvider', function ($routeProvider) {
	  $routeProvider
	    .when("/", {templateUrl: "quiz/home.jsp", controller: "animationCtrl"})
	    .when("/form", {templateUrl: "quiz/form.jsp", controller: "formDebutCtrl"})
	    .when("/choice", {templateUrl: "quiz/form-choice.jsp", controller: ""})
	    .otherwise("/404", {templateUrl: "template/404.html", controller: ""});
}]);
