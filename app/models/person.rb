class Person < ApplicationRecord
  belongs_to :organization, required: false, optional: true

  validates_presence_of :username, :email, :address

  def initialize(attrs = nil)
    defaults = {
      color_theme: "#fff",
    }
    super(defaults.merge(attrs || {}))
  end

 end