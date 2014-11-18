app = angular.module("HaikuHelper", ["ngResource"])

@HaikuCtrl = ($scope, $resource) ->
  Haiku = $resource("/haikus/:id", {id: "@id"}, {update: {method: "PUT"}})
  $scope.haikus = Haiku.query()

  $scope.addHaiku = ->
    haiku = Haiku.save($scope.newHaiku)
    $scope.haikus.push(haiku)
    $scope.newHaiku = {}