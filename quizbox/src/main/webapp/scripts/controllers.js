App.controller('formController', ['$scope', '$http', function($scope, $http) {

		$scope.formData = {};
	    
	    // function to process the form
	    $scope.processForm = function() {
	        alert('awesome!');  
	    };
}]);


App.controller('formDebutCtrl', ['$scope', '$http', function($scope, $http) {
	
	  $scope.colorButtonCreatQuiz = '#337ab7';
	  $scope.colorText = '#ffffff';
	  $scope.textButtonCreatQuiz = 'Faire le Quiz';
	  $scope.colorBackground = '#F5A345';
	  $scope.fontType = 'Arial';
	  $scope.titleQuiz = 'Nouveau Quiz';
	  $scope.descriptionQuiz = 'votre description du Quiz';

}]);

App.controller('logoCtrl', ['$scope', '$http', function($scope, $http) {
	
	  $scope.colorButtonCreatQuiz = '#337ab7';
	  $scope.colorText = '#ffffff';
	  $scope.textButtonCreatQuiz = 'Faire le Quiz';
	  $scope.colorBackground = '#F5A345';
	  $scope.titleQuiz = 'Nouveau Quiz';
	  $scope.descriptionQuiz = 'votre description du Quiz';

}]);

App.controller('MainCtrl', ['$scope', '$http', '$translate', function ($scope, $http, $translate) {
	$scope.changeLanguage = function (key) {
		$translate.use(key);
	};
	 
	$scope.userData = {
    	name: 'Xavier',
	    age: 25
	  }
}]);

App.controller('ContenuCtrl', ['$scope', '$http', function($scope, $http){

	$scope.results=[{id:'',image:'',title:'',description:''}];
	  
	  $scope.addNewResult = function() {
	    var newResult = $scope.results.length+1;
	    $scope.results.push({id:'',image:'',title:'',description:''});
	  };
	    
	  $scope.removeResult = function() {
	    var lastResult = $scope.results.length-1;
	    $scope.results.splice(lastResult);
	  };
	  
	
	
	
}]);



