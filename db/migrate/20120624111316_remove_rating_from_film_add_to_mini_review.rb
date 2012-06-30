class RemoveRatingFromFilmAddToMiniReview < ActiveRecord::Migration
  def up
    remove_column :films, :rating
    add_column :mini_reviews, :rating, :int
  end

  def down
    remove_column :mini_reviews, :rating
    add_column :films, :rating, :int
  end
end
