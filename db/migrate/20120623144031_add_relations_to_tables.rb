class AddRelationsToTables < ActiveRecord::Migration
  def change
    create_table :admins_articles, :id => false do |t|
      t.references :admin
      t.references :article
    end

    add_index :admins_articles, [:admin_id, :article_id]

    create_table :articles_films, :id => false do |t|
      t.references :article
      t.references :film
    end

    add_index :articles_films, [:article_id, :film_id]

    create_table :countries_films, :id => false do |t|
      t.string :country_id
      t.references :film
    end

    add_index :countries_films, [:country_id, :film_id]

    create_table :countries_directors, :id => false do |t|
      t.references :director
      t.string :country_id
    end

    add_index :countries_directors, [:director_id, :country_id]

    create_table :directors_films, :id => false do |t|
      t.references :director
      t.references :film
    end

    add_index :directors_films, [:director_id, :film_id]

    create_table :elements_films, :id => false do |t|
      t.references :element
      t.references :film
    end

    add_index :elements_films, [:element_id, :film_id]

    create_table :films_mini_articles, :id => false do |t|
      t.references :mini_article
      t.references :film
    end

    add_index :films_mini_articles, [:mini_article_id, :film_id]

    create_table :films_genres, :id => false do |t|
      t.references :film
      t.references :genre
    end

    add_index :films_genres, [:film_id, :genre_id]

    create_table :admins_mini_articles, :id => false do |t|
      t.references :mini_article
      t.references :admin
    end

    add_index :admins_mini_articles, [:mini_article_id, :admin_id]

    create_table :elements_mini_articles, :id => false do |t|
      t.references :mini_article
      t.references :element
    end

    add_index :elements_mini_articles, [:mini_article_id, :element_id]

    create_table :mini_articles_themes, :id => false do |t|
      t.references :mini_article
      t.references :theme
    end

    add_index :mini_articles_themes, [:mini_article_id, :theme_id]

    create_table :films_mini_reviews, :id => false do |t|
      t.references :mini_review
      t.references :film
    end

    add_index :films_mini_reviews, [:mini_review_id, :film_id]

    create_table :admins_mini_reviews, :id => false do |t|
      t.references :mini_review
      t.references :admin
    end

    add_index :admins_mini_reviews, [:mini_review_id, :admin_id]

    create_table :films_reviews, :id => false do |t|
      t.references :review
      t.references :film
    end

    add_index :films_reviews, [:review_id, :film_id]

    create_table :admins_reviews, :id => false do |t|
      t.references :review
      t.references :admin
    end

    add_index :admins_reviews, [:review_id, :admin_id]

    create_table :films_themes, :id => false do |t|
      t.references :theme
      t.references :film
    end    

    add_index :films_themes, [:theme_id, :film_id]
  end
end
