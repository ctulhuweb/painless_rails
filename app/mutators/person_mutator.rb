class PersonMutator
  class << self
    def create(params, create_an_organization = false)
      person = Person.create(params)
      if create_an_organization
        org = Organization.create(address: params["address"], title: "#{params["username"]}'s organization")
        org.persons << person
      end
    end
  end
end