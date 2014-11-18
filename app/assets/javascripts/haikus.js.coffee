@HaikuCtrl = ($scope) ->
  $scope.haikus = [
    {text: "Sipping on green tea \n Computer, write me a poem \n Monday at Whole Foods"}
    {text: "More words about.. "}
    {text: "And even more stuff and things.. "}
  ]
  $scope.addHaiku = ->
    haiku = Haiku.save($scope.newHaiku)
    $scope.haikus.push(haiku)
    $scope.newHaiku = {}