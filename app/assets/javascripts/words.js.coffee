# app = angular.module("HaikuHelper", ["ngResource"])

# @WordCtrl = ($scope, $resource) ->
#   Word = $resource("/words/:id", {id: "@id"}, {update: {method: "PUT"}})
#   $scope.words = Word.query()

#   $scope.addWord = ->
#     word = Word.save($scope.newWord)
#     $scope.words.push(word)
#     $scope.newWord = {}
