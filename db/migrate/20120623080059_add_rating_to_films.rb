class AddRatingToFilms < ActiveRecord::Migration
  def change
    add_column :films, :rating, :int
  end
end
