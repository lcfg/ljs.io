define [
	'angular'

	'cs!controllers/header'
], (angular, header) ->

	angular
		.module('core', [])

		.controller('header', header)

		.config [ '$routeProvider', ($routeProvider) ->
			$routeProvider
				.when '/',
					templateUrl: '/templates/views/home.html'

				.when '/articles',
					templateUrl: '/templates/views/articles.html'

				.when '/about',
					templateUrl: '/templates/views/about.html'

				.otherwise
					templateUrl: '/templates/views/404.html'
		]
