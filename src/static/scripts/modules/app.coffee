define [
	'angular'

	'angularRoute'

	'cs!modules/core'
	'cs!modules/directives'

	'cs!modules/projects'
], (angular) ->

	try
		angular.module('templateCache')
	catch
		angular.module('templateCache', [])

	angular
		.module('app', [
			'templateCache'

			'ngRoute'
			'core'
			'directives'
			'projects'
		])
		.config [ '$locationProvider', ($locationProvider) ->
			$locationProvider.html5Mode(true).hashPrefix('!')
		]
