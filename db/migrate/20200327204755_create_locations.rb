class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :id_loc
      t.string :name
      t.string :type_loc
      t.string :dimension
      t.text :residents
      t.string :url
      t.string :created

      t.timestamps
    end
  end
end
