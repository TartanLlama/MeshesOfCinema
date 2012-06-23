class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.date :dob
      t.date :dod
      t.text :bio

      t.timestamps
    end
  end
end
