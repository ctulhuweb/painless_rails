class ModerationForm < Person
  include ActiveFormModel

  permit :username, :email, :address, :profession, 
    :workplace, :moderation_mode, :create_an_organization

  validates_presence_of :profession, :workplace
end