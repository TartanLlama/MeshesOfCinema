class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.text :bio
      t.integer :power

      t.timestamps
    end
  end
end
