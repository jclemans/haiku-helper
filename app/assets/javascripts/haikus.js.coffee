angular.module('HaikuHelper', ['ngResource'])
.factory 'Haiku', ['$resource', '$http', ($resource, $http) ->
  resource = $resource('api/v1/haikus/:id', {id: '@id'}, {update: {method: 'PUT'}})
  
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

