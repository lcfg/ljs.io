require({
	baseUrl: '/scripts',
	paths: {
		'angular':          '../libs/angular',
		'angularRoute':     '../libs/angular-route',
		'jquery':           '../libs/jquery-1.10.2',

		'almond':           '../libs/almond',
		'coffee-script':    '../libs/coffee-script',
		'cs':               '../libs/cs',
		'd3':               '../libs/d3.v3',
		'raphael':          '../libs/raphael'
	},
	shim: {
		'angular': {
			exports: 'angular'
		},
		'd3': {
			exports: 'd3'
		}
	}
}, [
	'angular',
	'cs!modules/app'
], function (angular, app) {
	if (document.readyState === 'complete') {
		angular.bootstrap(document, ['app']);
	} else {
		// Not ready yet.
		angular.element(document).ready(function () {
			angular.bootstrap(document, ['app']);
		});
	}
});

