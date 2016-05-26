
var App = angular.module('myApp',['ngAnimate', 'ui.router']);

// configuring our routes 
// =============================================================================
App.config(function($stateProvider, $urlRouterProvider) {
    
    $stateProvider
    
        // route to show our basic form (/form)
//        .state('form', {
//            url: '/',
//            templateUrl: 'quiz/form.jsp',
//            controller: 'formController'
//        })
        // nested states 
        // each of these sections will have their own view
        // url will be nested (/form/profile)
        .state('debut', {
            url: 'debut',
            templateUrl: 'quiz/form-debut.jsp'
        })
        
        // url will be /form/interests
        .state('contenu', {
            url: 'contenu',
            templateUrl: 'quiz/form-contenu.jsp'
        })
        
        // url will be /form/payment
        .state('publication', {
            url: 'publication',
            templateUrl: 'quiz/form-publication.jsp'
        });
       
    // catch all route
    // send users to the form page 
    $urlRouterProvider.otherwise('/');
})


