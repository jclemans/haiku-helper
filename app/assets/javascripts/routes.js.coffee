angular.module('HaikuHelper')
.config ($routeProvider) ->
  $routeProvider.when '/haikus', ->
    templateUrl: '/templates/pages/haikus/index.html'
  .when '/', ->
    templateUrl: '/templates/pages/haikus/index.html'