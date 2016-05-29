App.controller('formController', ['$scope', '$http', function($scope, $http) {

		$scope.formData = {};
	    
	    // function to process the form
	    $scope.processForm = function() {
	        alert('awesome!');  
	    };
}]);

App.controller('animationCtrl', ['$scope', '$http', function($scope, $http) {
	  
	  $scope.animation = false;

}]);

App.controller('formDebutCtrl', ['$scope', '$http', function($scope, $http) {
	
	  $scope.colorButtonCreatQuiz = '#db2f2f';
	  $scope.colorText = '#db2f2f';
	  $scope.colorTextButtonCreatQuiz = 'TAKE QUIZ';
	  $scope.colorBackground = '#F5A345';
	  
	  
	  

}]);
