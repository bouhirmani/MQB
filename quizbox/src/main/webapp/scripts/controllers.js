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
	  $scope.colorBackground = '#db2f2f';
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

	//******Results*******
	$scope.results=[{id:'1' ,image:'',title:'result 1',description:'description 1'}];
	  
	$scope.addNewResult = function() {
	  var newResult = $scope.results.length+1;
	  $scope.results.push({id:newResult ,image:'',title:'',description:''});
	};
	    
	$scope.removeResult = function(index) {
	  var lastResult = $scope.results.length-1;
	  $scope.results.splice(index,1);
	};
	  
	//******Questions*******
	$scope.questions=[{id:'1' ,title:'',image:false, imagePath:'',
		answers:[{id:'1',title:"",image:"",resultCorrelations:""},
		        {id:'2',title:"",image:"",resultCorrelations:""}]
	}];
	  
	$scope.addNewQuestion = function() {
	  var newQuestion = $scope.questions.length+1;
	  $scope.questions.push({id:'1' ,title:'',image:false,imagePath:'',
			answers:[{id:'1',title:"",image:false,resultCorrelations:""},
				     {id:'2',title:"",image:false,resultCorrelations:""}]
			});
	};
	    
	$scope.removeQuestion = function(index) {
	  var lastQuestion = $scope.questions.length-1;
	  $scope.questions.splice(index,1);
	};
	

	$scope.addImage=function(index){
		$scope.questions[index].image=true;
	};
	
	$scope.removeImage=function(index){
		$scope.questions[index].image=false;
	};
	

	$scope.addAnswerImage = function(parentIndex){
		for (var i=0; i<$scope.questions[parentIndex].answers.length; i++) {
			  $scope.questions[parentIndex].answers[i].image=true;
		}
	};
	$scope.removeAnswerImage = function(parentIndex){
		for (var i=0; i<$scope.questions[parentIndex].answers.length; i++) {
			$scope.questions[parentIndex].answers[i].image=false;
		}
	};
	
	$scope.addAnswer = function(index) {
		console.log(index);
	  var newAnswer = $scope.questions[index].answers.length+1;
	  $scope.questions[index].answers.push({id:newAnswer ,image:'',title:''});
	};
	    
	$scope.removeAnswer = function(parentIndex,index) {
//		console.log("ParentIndex: "+parentIndex);
//		console.log("Index: "+index);
		var lastAnswer = $scope.questions[parentIndex].answers.length-1;
		$scope.questions[parentIndex].answers.splice(index,1);
	};
		
	$scope.optionsTinyMce = {
		language: "fr_FR",
		statusbar: false,
		menubar: false,
		theme: 'modern',
		toolbar_items_size : 'small',
		toolbar1:'styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | forecolor backcolor',
		plugins: "textcolor"	
	};
	
}]);



