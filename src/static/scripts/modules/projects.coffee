define [
	'angular'
], (angular) ->

	angular
		.module('projects', [])

		.config [ '$routeProvider', ($routeProvider) ->
			$routeProvider
				.when '/projects',
					templateUrl: '/templates/views/projects/projects.html'

				.when '/projects/alg',
					templateUrl: '/templates/views/projects/alg.html'

				.when '/projects/chromium',
					templateUrl: '/templates/views/projects/chromium.html'
		]
