class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.date :dob
      t.date :dod
      t.text :bio
      t.string :imdb_id

      t.timestamps
    end

    add_index :directors, :imdb_id, unique: true
  end
end
