class Signup < Person
  include ActiveFormModel

  permit :username, :email, :address, :color_theme, :terms_of_service

  validates_confirmation_of :email
  validates_acceptance_of :terms_of_service

  def email=(email)
    if email.present?
      write_attribute(:email, email.downcase)
    else
      super
    end
  end

  def username=(username)
    if username.present?
      write_attribute(:username, username.downcase)
    else
      super
    end
  end
end