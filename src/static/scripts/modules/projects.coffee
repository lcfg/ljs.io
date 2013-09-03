define [
	'angular'

	'cs!controllers/views/projects'
	'cs!controllers/views/projects/openrig'
	'cs!controllers/views/projects/alg'
], (angular, projects, openrig, alg) ->

	angular
		.module('projects', [])

		.config [ '$routeProvider', ($routeProvider) ->
			$routeProvider
				.when '/projects',
					controller: projects
					templateUrl: '/templates/views/projects/projects.html'

				.when '/projects/openrig',
					controller: openrig
					templateUrl: '/templates/views/projects/openrig.html'

				.when '/projects/alg',
					controller: alg
					templateUrl: '/templates/views/projects/alg.html'
		]
