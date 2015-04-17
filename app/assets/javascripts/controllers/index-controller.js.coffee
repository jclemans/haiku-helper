angular.module("HaikuHelper", [])

.controller 'HaikuCtrl',['$resource', '$scope', 'Haiku', ($resource, $scope, Haiku) ->
  haikuIndex = ->
    Haiku.getHaikus()
    $scope.haikus = response
    $scope.newHaiku = new Haiku()

  $scope.addHaiku = ->
    $scope.newHaiku.$save()
    $scope.haikus.push($scope.newHaiku)
    $scope.newHaiku = {}
]