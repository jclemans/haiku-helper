app = angular.module("HaikuHelper", ["ngResource"])

.factory "Haiku", ["$resource", "$http", ($resource, $http) ->
  resource = $resource("api/v1/haikus/:id", {id: "@id"}, {update: {method: "PUT"}})
  
  Haiku =
    getHaikus: ->
      resource.query()

    addHaiku: (haikuObject) ->
      $http.post('/api/v1/haikus',
        {
          haiku: haikuObject,
          authenticity_token: $('meta[name=csrf-token]').attr('content')
        }
      )
]

.controller 'HaikuCtrl',["$resource", "$scope", "Haiku", ($resource, $scope, Haiku) ->
  haikuIndex = ->
    Haiku.getHaikus()
    $scope.haikus = response
    $scope.newHaiku = new Haiku()

  $scope.addHaiku = ->
    $scope.newHaiku.$save()
    $scope.haikus.push($scope.newHaiku)
    $scope.newHaiku = {}
]