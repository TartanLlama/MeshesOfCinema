class AddYearToFilm < ActiveRecord::Migration
  def change
    add_column :films, :year, :int
  end
end
