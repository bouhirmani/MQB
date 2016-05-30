
var App = angular.module('myApp',['ngAnimate', 'ngRoute']);


App.config(['$routeProvider', function ($routeProvider) {
	  $routeProvider
	    .when("/", {templateUrl: "quiz/home.jsp", controller: "animationCtrl"})
	    .when("/form", {templateUrl: "quiz/form.jsp", controller: ""})
	    //.when("/form/configuration", {templateUrl: "quiz/form-configuration.jsp", controller: "formDebutCtrl"})
	    .otherwise("/404", {templateUrl: "template/404.html", controller: ""});
}]);