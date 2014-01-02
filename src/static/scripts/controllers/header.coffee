define ->
	return [ '$location', '$scope', ($location, $scope) ->

		$scope.menuItems = [
				name: 'Projects'
				link: '/projects'
			,
				name: 'Blog'
				link: 'http://blog.ljs.io'
			,
				name: 'About'
				link: '/about'
		]

		$scope.isSelected = (item) ->
			return item.link == $location.path()

		$scope.clickLogo = ->
			$location.path('/')
	]
