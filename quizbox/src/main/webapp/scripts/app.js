'use strict';

var App = angular.module('myApp',['ngAnimate', 'ui.router']);

// configuring our routes 
// =============================================================================
App.config(function($stateProvider, $urlRouterProvider) {
    
    $stateProvider
    
        // route to show our basic form (/form)
        .state('form.creation', {
            url: '/',
            templateUrl: 'form-creation.jsp',
            controller: 'formController'
        })
        
        // nested states 
        // each of these sections will have their own view
        // url will be nested (/form/profile)
        .state('form.debut', {
            url: '/debut',
            templateUrl: 'form-debut.jsp'
        })
        
        // url will be /form/interests
        .state('form.contenu', {
            url: '/contenu',
            templateUrl: 'form-.'
        })
        
        // url will be /form/payment
        .state('form.publication', {
            url: '/publication',
            templateUrl: 'form-publication.jsp'
        });
       
    // catch all route
    // send users to the form page 
    //$urlRouterProvider.otherwise('/');
})


