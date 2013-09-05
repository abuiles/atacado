Atacado.IndexRoute = Ember.Route.extend
  model: ->
    Atacado.Quote.find()

  newClient: ->
    @store.createRecord('client')


  setupController: (controller, model) ->
    controller.set('model', model)
    controller.set('client', @newClient())

  actions:
    save: ->
      client = @controller.get('client')
      @controller.set('submitted', true)
      client.save()
