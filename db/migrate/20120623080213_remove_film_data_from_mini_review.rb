class RemoveFilmDataFromMiniReview < ActiveRecord::Migration
  def up
    remove_column :mini_reviews, :decade
    remove_column :mini_reviews, :title
    remove_column :mini_reviews, :year
  end

  def down
    add_column :mini_reviews, :decade, string
    add_column :mini_reviews, :title, string
    add_column :mini_reviews, :year, int
  end
end
