class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.integer :id_char
      t.string :name
      t.string :status
      t.string :species
      t.string :type_char
      t.string :gender
      t.string :origin
      t.text :location
      t.text :image
      t.string :episode
      t.string :url
      t.string :created

      t.timestamps
    end
  end
end
