class CreatePersons < ActiveRecord::Migration[6.0]
  def change
    create_table :persons do |t|
      t.string :username
      t.string :address
      t.string :email
      t.string :profession
      t.string :workplace
      t.string :longitude
      t.string :latitude
      t.string :color_theme

      t.timestamps
    end
  end
end