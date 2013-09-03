define ->
	return [ '$location', '$scope', ($location, $scope) ->

		$scope.menuItems = [
				name: 'Projects'
				link: '/projects'
			,
				name: 'Articles'
				link: '/articles'
			,
				name: 'About'
				link: '/about'
		]

		$scope.isSelected = (item) ->
			return item.link == $location.path()

		$scope.clickLogo = ->
			$location.path('/')
	]
