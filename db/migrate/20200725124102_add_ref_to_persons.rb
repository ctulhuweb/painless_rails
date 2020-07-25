class AddRefToPersons < ActiveRecord::Migration[6.0]
  def change
    add_reference :persons, :organization, null: true, foreign_key: true
  end
end
