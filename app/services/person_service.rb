class PersonService
  def self.create(form, params)
    lat, long = Geocoder.coordinates(params["address"])
    PersonMutator.create(
      params.merge({latitude: lat, longitude: long}), 
      form.create_an_organization
    )
  end
end