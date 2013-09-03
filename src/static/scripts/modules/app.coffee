define [
	'angular'

	'angularRoute'

	'cs!modules/core'
	'cs!modules/directives'

	'cs!modules/projects'
], (angular) ->

	angular
		.module('app', [ 'ngRoute', 'core', 'directives', 'projects' ])

		.config [ '$locationProvider', ($locationProvider) ->
			$locationProvider.html5Mode(true).hashPrefix('!')
		]
