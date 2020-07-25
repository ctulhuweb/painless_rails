class PersonService
  def self.create(params)
    lat, long = Geocoder.coordinates(params["address"])
    PersonMutator.create(person, params.merge({latitude: lat, longitude: long}))
  end
end