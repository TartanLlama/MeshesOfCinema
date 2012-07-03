class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :year
      t.string :imdb_id

      t.timestamps
    end

    add_index :films, :imdb_id, unique: true
  end
end
