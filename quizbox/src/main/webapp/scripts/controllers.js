'use strict';

App.controller('formController', ['$scope', '$http', function($scope, $http) {

		$scope.formData = {};
	    
	    // function to process the form
	    $scope.processForm = function() {
	        alert('awesome!');  
	    };
}]);