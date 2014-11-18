@HaikuCtrl = ($scope) ->
  $scope.haikus = [
    {text: "Sipping on green tea \n Computer, write me a poem \n Monday at Whole Foods"}
    {text: "More words.. "}
    {text: "And even more stuff and things.. "}
  ]
  $scope.addHaiku = ->
    $scope.haikus.push($scope.newHaiku)
    $scope.newHaiku = {}