class CreateEpisodios < ActiveRecord::Migration[6.0]
  def change
    create_table :episodios do |t|
      t.integer :id_epi
      t.string :name
      t.string :air_date
      t.string :episode
      t.text :characters
      t.string :url
      t.string :created

      t.timestamps
    end
  end
end
