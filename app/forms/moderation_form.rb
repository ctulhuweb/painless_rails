class ModerationForm < Person
  include ActiveFormModel

  attr_accessor :create_an_organization

  permit :username, :email, :address, :profession, 
    :workplace, :moderation_mode, :create_an_organization, :terms_of_service

  validates_acceptance_of :terms_of_service
  validates_presence_of :profession, :workplace
end