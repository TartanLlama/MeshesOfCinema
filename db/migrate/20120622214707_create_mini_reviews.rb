class CreateMiniReviews < ActiveRecord::Migration
  def change
    create_table :mini_reviews do |t|
      t.string :title
      t.integer :year
      t.string :decade
      t.text :content

      t.timestamps
    end
  end
end
