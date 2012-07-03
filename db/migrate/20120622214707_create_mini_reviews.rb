class CreateMiniReviews < ActiveRecord::Migration
  def change
    create_table :mini_reviews do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
