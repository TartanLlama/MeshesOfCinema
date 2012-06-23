class AddRelationsToTables < ActiveRecord::Migration
  def change
    create_table :admins_articles, :id => false do |t|
      t.integer :admin_id
      t.integer :article_id
    end

    create_table :admins_mini_articles, :id => false do |t|
      t.integer :admin_id
      t.integer :mini_article_id
    end

    create_table :admins_reviews, :id => false do |t|
      t.integer :admin_id
      t.integer :review_id
    end

    create_table :admins_mini_reviews, :id => false do |t|
      t.integer :admin_id
      t.integer :mini_review_id
    end

    create_table :articles_films, :id => false do |t|
      t.integer :article_id
      t.integer :film_id
    end

    create_table :countries_films, :id => false do |t|
      t.integer :country_id
      t.integer :film_id
    end

    create_table :directors_tags, :id => false do |t|
      t.integer :director_id
      t.integer :tag_id
    end

    create_table :directors_countries, :id => false do |t|
      t.integer :director_id
      t.integer :country_id
    end

    create_table :directors_films, :id => false do |t|
      t.integer :director_id
      t.integer :film_id
    end

    create_table :elements_films, :id => false do |t|
      t.integer :element_id
      t.integer :film_id
    end

    create_table :mini_articles_films, :id => false do |t|
      t.integer :mini_article_id
      t.integer :film_id
    end

    create_table :mini_articles_admins, :id => false do |t|
      t.integer :mini_article_id
      t.integer :admin_id
    end

    create_table :mini_articles_elements, :id => false do |t|
      t.integer :mini_article_id
      t.integer :element_id
    end

    create_table :mini_articles_themes, :id => false do |t|
      t.integer :mini_article_id
      t.integer :theme_id
    end

    create_table :mini_reviews_films, :id => false do |t|
      t.integer :mini_review_id
      t.integer :film_id
    end

    create_table :mini_reviews_admins, :id => false do |t|
      t.integer :mini_review_id
      t.integer :admin_id
    end

    create_table :reviews_films, :id => false do |t|
      t.integer :review_id
      t.integer :film_id
    end

    create_table :reviews_admins, :id => false do |t|
      t.integer :review_id
      t.integer :admin_id
    end

    create_table :tags_films, :id => false do |t|
      t.integer :tag_id
      t.integer :film_id
    end

    create_table :tags_reviews, :id => false do |t|
      t.integer :tag_id
      t.integer :review_id
    end

    create_table :tags_mini_reviews, :id => false do |t|
      t.integer :tag_id
      t.integer :mini_review_id
    end

    create_table :tags_articles, :id => false do |t|
      t.integer :tag_id
      t.integer :article_id
    end

    create_table :tags_mini_articles, :id => false do |t|
      t.integer :tag_id
      t.integer :mini_article_id
    end

    create_table :themes_films, :id => false do |t|
      t.integer :theme_id
      t.integer :film_id
    end    
  end
end
