module.exports = (grunt) ->

	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')

		clean:
			build: ['build']
			css:
				files: [
					expand: true
					cwd: 'build/static/styles'
					src: '*'
					filter: (src) -> src.indexOf('main.css') is -1
				]
			templateCache: [ 'build/static/scripts/templateCache.js' ]

		copy:
			main:
				files: [
					expand: true
					cwd: 'src'
					src: '**'
					dest: 'build'
					filter: (src) ->
						not (
							/^src\/static\/(scripts|lib)/.test(src) or # Exclude files under scripts or lib.
							/^src\/static\/.*\.less$/.test(src) # Exclude less files.
						)
				]

		requirejs:
			main:
				options:
					baseUrl: 'src/static/scripts'
					mainConfigFile: 'src/static/scripts/main.js'
					out: 'build/static/scripts/main.js'
					name: 'main'
					optimize: 'uglify2'
					preserveLicenseComments: false
					stubModules: [
						'text'
						'css'
						'cs'
						'json',
						'ometa'
					]
					include: ['almond']
					excludeShallow: [
						'cache',
						'coffee-script',
						'css/normalize', 'css/css',
						'ometa-parsers', 'uglify-js'
					]
			css:
				options:
					cssIn: 'build/static/styles/main.css'
					out: 'build/static/styles/main.css'
					optimizeCss: 'none'

		less:
			main:
				options:
					paths: [ 'src/static/styles' ]
					strictImports: true
					yuicompress: true
				files: [
					src: 'src/static/styles/main.less'
					dest: 'build/static/styles/main.css'
				]

		imagemin:
			main:
				options:
					optimizationLevel: 3
				files: [
					expand: true
					cwd: 'src/static/images/'
					src: '**'
					dest: 'build/static/images/'
				]

		replace:
			'index.html':
				src: 'build/static/index.html'
				dest: 'build/static/index.html'
				replacements: [
					{
						from: /\{build\}/gi
						to: '<%= pkg.version %>'
					}
					# replace 'stylesheet/less' plain 'stylesheet'
					{
						from: /stylesheet\/less/g
						to: 'stylesheet'
					}
					# replace less extention with css
					{
						from: /\.less\b/g
						to: '.css'
					}
					# remove less processor and requirejs
					{
						from: /\s*<script.*?\b(less|require)\b[^\"\']*?\.js.*?<\/script>\s*(\r\n|\n|\r)/gm
						to: ''
					}
				]
			'procfile':
				src: 'Procfile'
				dest: 'Procfile'
				replacements: [
					from: 'src/'
					to: 'build/'
				]

		htmlmin:
			"index.html":
				options:
					removeComments: true
					removeCommentsFromCDATA: true
					collapseWhitespace: false
				files: [
					src: "build/static/index.html"
					dest: "build/static/index.html"
				]

		ngtemplates:
			templateCache:
				cwd: 'src/static'
				src: 'templates/**/**.htm*'
				dest: 'build/static/scripts/templateCache.js'
				options:
					htmlmin:
						collapseBooleanAttributes: true
						collapseWhitespace: true
						removeAttributeQuotes: true
						removeComments: true
						removeEmptyAttributes: true
						removeRedundantAttributes: true
						removeScriptTypeAttributes: true
						removeStyleLinkTypeAttributes: true
					prefix: '/'
					standalone: true

		concat:
			templateCache:
				src: [ 'build/static/scripts/main.js', 'build/static/scripts/templateCache.js' ]
				dest: 'build/static/scripts/main.js'

	grunt.loadNpmTasks('grunt-angular-templates')
	grunt.loadNpmTasks('grunt-contrib-clean')
	grunt.loadNpmTasks('grunt-contrib-concat')
	grunt.loadNpmTasks('grunt-contrib-copy')
	grunt.loadNpmTasks('grunt-contrib-htmlmin')
	grunt.loadNpmTasks('grunt-contrib-imagemin')
	grunt.loadNpmTasks('grunt-contrib-less')
	grunt.loadNpmTasks('grunt-contrib-requirejs')
	grunt.loadNpmTasks('grunt-text-replace')

	grunt.registerTask 'build', [
		'clean:build'
		'copy:main'
		'requirejs:main'
		'less:main'
		'requirejs:css'
		'clean:css'
		'imagemin:main'
		'replace:index.html'
		'htmlmin'
		'ngtemplates'
		'concat:templateCache'
		'clean:templateCache'
	]

