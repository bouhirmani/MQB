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
	
	  $scope.colorButtonCreatQuiz = '#337ab7';
	  $scope.colorText = '#ffffff';
	  $scope.textButtonCreatQuiz = 'Faire le Quiz';
	  $scope.colorBackground = '#F5A345';
	  $scope.titleQuiz = 'Nouveau Quiz';
	  $scope.descriptionQuiz = 'votre description du Quiz';

}]);
