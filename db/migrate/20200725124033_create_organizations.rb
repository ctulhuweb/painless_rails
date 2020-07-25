class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
