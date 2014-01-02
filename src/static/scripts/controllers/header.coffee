define ->
	return [ '$location', '$scope', ($location, $scope) ->

		$scope.menuItems = [
				name: 'Home'
				link: '/'
			,
				name: 'Projects'
				link: '/projects'
			,
				name: 'Blog (@Tumblr)'
				link: 'http://blog.ljs.io'
			,
				name: 'Chromium'
				link: '/projects/chromium'
			,
				name: 'Algorithms'
				link: '/projects/alg'
			,
				name: 'About'
				link: '/about'
		]

		$scope.isSelected = (item) ->
			return item.link == $location.path()

		$scope.clickLogo = ->
			$location.path('/')
	]
