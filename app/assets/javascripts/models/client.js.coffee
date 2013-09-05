# for more details see: http://emberjs.com/guides/models/defining-models/

Atacado.Client = DS.Model.extend
  name: DS.attr 'string'
  phoneNumber: DS.attr 'string'
  email: DS.attr 'string'
