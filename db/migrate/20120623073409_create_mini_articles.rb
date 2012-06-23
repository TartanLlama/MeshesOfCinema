class CreateMiniArticles < ActiveRecord::Migration
  def change
    create_table :mini_articles do |t|
      t.string :name

      t.timestamps
    end
  end
end
