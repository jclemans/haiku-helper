angular.module('HaikuHelper', ['ngResource', 'ngRoute'])
.config ($routeProvider, $locationProvider) ->
  $routeProvider.
    when('/haikus',
      templateUrl: '/assets/templates/haikus/index.html',
      controller: 'HaikuController'
    ).
    when('/', 
      templateUrl: '/assets/templates/haikus/index.html',
      controller: 'HaikuController'
    ).
    when('/words',
      templateUrl: '/assets/templates/words/index.html',
      controller: 'WordCtrl'
    )