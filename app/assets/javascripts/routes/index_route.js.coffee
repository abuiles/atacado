Atacado.IndexRoute = Ember.Route.extend
  model: ->
    Atacado.Quote.find()

  setupController: (controller, model) ->
    controller.set('model', model)
    console.log 'setting up index router', model