class PersonMutator

  class << self
    def create(params)
      Person.create(params)
      if params["create_an_organization"]
        Organization.create(address: address, title: "#{username}'s organization", person: self)
      end
    end
  end
end