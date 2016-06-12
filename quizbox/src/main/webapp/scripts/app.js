var App = angular.module('myApp', [ 'ngAnimate',
                                    'colorpicker.module', 'flow','pascalprecht.translate']);

App.config(function ($translateProvider) {
	$translateProvider.translations('en', {
		TITLE: 'Hello.',
		NEW_QUIZ: 'Create a new Quiz',
		TITLE_QUIZ: 'Title of the Quiz',
		WELCOME_MESSAGE1: 'My name is {{name}}',
		WELCOME_MESSAGE2: 'And my name is {{name}}. I\'m {{age}} years old',
		BUTTON_LANG_EN: 'english',
		BUTTON_LANG_FR: 'français',
		USER_PROFILE:'User Profile',
		LOGOUT:'Logout',
		DESCRIPTION_QUIZ:'Description of the Quiz',
		COVER_PHOTO:'Cover photo',
		UPLOAD_PHOTO:'Upload Photo',
		CHANGE_PHOTO:'Change Photo',
		DELETE_PHOTO:'Delete Photo',
		BGR_COLOR:'Background color',
		FONT_COLOR:'Font color',
		FONT_TYPE:'Font type',
		BUTTON_COLOR:'Button color',
		BUTTON_TEXT:'Button text',
		CUSTOM_LOGO:'Logo',
		UPLOAD_LOGO:'Upload logo',
		CHANGE_LOGO:'Change logo',
		DELETE_LOGO:'Delete logo',
		EDIT_FONT:'Edit font type',
		CLOSE:'Close'
		
	});
	$translateProvider.translations('fr', {
		TITLE: 'Bonjour.',
		NEW_QUIZ: 'Créer un nouveau Quiz',
		TITLE_QUIZ: 'Titre du Quiz',
		WELCOME_MESSAGE1: 'Mon nom est {{name}}',
		WELCOME_MESSAGE2: 'Et mon nom est {{name}}. J\'ai {{age}} ans',
		BUTTON_LANG_EN: 'english',
		BUTTON_LANG_FR: 'français',
		USER_PROFILE:'Profile de l\'utilisateur',
		LOGOUT:'Se déconnecter',
		DESCRIPTION_QUIZ:'Description du Quiz',
		COVER_PHOTO:'Photo de couverture',
		UPLOAD_PHOTO:'Charger Photo',
		CHANGE_PHOTO:'Modifier Photo',
		DELETE_PHOTO:'Supprimer Photo',
		BGR_COLOR:'Couleur de fond',
		FONT_COLOR:'Couleur de Police',
		FONT_TYPE:'Police',
		BUTTON_COLOR:'Couleur du boutton',
		BUTTON_TEXT:'Texte du boutton',
		CUSTOM_LOGO:'Logo',
		UPLOAD_LOGO:'Charger logo',
		CHANGE_LOGO:'Modifier logo',
		DELETE_LOGO:'Supprimer logo',
		EDIT_FONT:'Changer la police',
		CLOSE:'Fermer'
	});
	$translateProvider.preferredLanguage('fr');
});
