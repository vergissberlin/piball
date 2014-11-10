'use strict';

var request = require('request');

module.exports = function (grunt) {
	// show elapsed time at the end
	require('time-grunt')(grunt);
	// load all grunt tasks
	require('load-grunt-tasks')(grunt);

	var reloadPort = 35729, files;

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		compass: {
			dist: {
				options: {
					sassDir: 'app/scss',
					cssDir: 'www/css',
					environment: 'production'
				}
			},
			dev: {
				options: {
					sassDir: 'app/scss',
					cssDir: 'www/css'
				}
			}
		},
		compile: {
			cssmin: {
				css: {
					src: 'www/css/main.css',
					dest: 'www/css/main.min.css'
				}
			}
		},
		watch: {
			options: {
				nospawn: true,
				livereload: reloadPort
			},
			js: {
				files: [
					'app/**/*.js'
				],
				tasks: ['compile']
			},
			scss: {
				files: [
					'app/scss/*.scss'
				],
				tasks: ['compass'],
				options: {livereload: reloadPort}
			},
			views: {
				files: [
					'www/*.html'
				],
				options: {livereload: reloadPort}
			}
		}
	});


	grunt.registerTask('comp', ['compile']);
	grunt.registerTask('default', ['watch']);
};
