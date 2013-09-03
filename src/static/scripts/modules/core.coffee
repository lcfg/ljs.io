define [
	'angular'

	'cs!controllers/header'

	'cs!controllers/views/about'
	'cs!controllers/views/articles'
	'cs!controllers/views/home'
], (angular, header, about, articles, home) ->

	angular
		.module('core', [])

		.controller('header', header)

		.config [ '$routeProvider', ($routeProvider) ->
			$routeProvider
				.when '/',
					controller: home
					templateUrl: '/templates/views/home.html'

				.when '/articles',
					controller: articles
					templateUrl: '/templates/views/articles.html'

				.when '/about',
					controller: about
					templateUrl: '/templates/views/about.html'

				.otherwise
					templateUrl: '/templates/views/404.html'
		]
