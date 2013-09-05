Atacado.Quote = Ember.Object.extend
  _MO: 0.3
  _VE: 0.07
  _VO: Atacado._VO
  weight: 0
  goldContent: 0
  protector: true
  price: (->
    weight = parseFloat(@get('weight')) || 0
    goldContent = parseFloat(@get('goldContent')) || 0
    metal_price = weight * goldContent * (@_VO/1000.0)
    work        = weight * @_MO
    varnish     = weight * @_VE
    price = metal_price + work
    price = price + varnish if @get('protector') == true
    price
  ).property('weight', 'goldContent', 'protector')

Atacado.Quote.reopenClass
  find: ->
    model = Atacado.Quote.create(weight: 100, goldContent: 0, color: "", protector: true)
    window.model = model
    model
