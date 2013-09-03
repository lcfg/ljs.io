define [
	'angular'

	'cs!controllers/views/projects'
	'cs!controllers/views/projects/openrig'
	'cs!controllers/views/projects/algo2'
], (angular, projects, openrig, algo2) ->

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

				.when '/projects/algo2'
					controller: algo2
					templateUrl: '/templates/views/projects/algo2.html'
		]
