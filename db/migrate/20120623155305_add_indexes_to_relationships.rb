class AddIndexesToRelationships < ActiveRecord::Migration
  def change
    add_index :admins_articles, :admin_id
    add_index :admins_articles, :article_id

    add_index :admins_mini_articles, :admin_id
    add_index :admins_mini_articles, :mini_article_id

    add_index :admins_reviews, :admin_id
    add_index :admins_reviews, :review_id

    add_index :admins_mini_reviews, :admin_id
    add_index :admins_mini_reviews, :mini_review_id

    add_index :articles_films, :article_id
    add_index :articles_films, :film_id

    add_index :countries_films, :country_id
    add_index :countries_films, :film_id

    add_index :directors_tags, :director_id
    add_index :directors_tags, :tag_id

    add_index :directors_countries, :director_id
    add_index :directors_countries, :country_id

    add_index :directors_films, :director_id
    add_index :directors_films, :film_id

    add_index :elements_films, :element_id
    add_index :elements_films, :film_id

    add_index :mini_articles_films, :mini_article_id
    add_index :mini_articles_films, :film_id

    add_index :mini_articles_admins, :mini_article_id
    add_index :mini_articles_admins, :admin_id

    add_index :mini_articles_elements, :mini_article_id
    add_index :mini_articles_elements, :element_id

    add_index :mini_articles_themes, :mini_article_id
    add_index :mini_articles_themes, :theme_id

    add_index :mini_reviews_films, :mini_review_id
    add_index :mini_reviews_films, :film_id

    add_index :mini_reviews_admins, :mini_review_id
    add_index :mini_reviews_admins, :admin_id

    add_index :reviews_films, :review_id
    add_index :reviews_films, :film_id

    add_index :reviews_admins, :review_id
    add_index :reviews_admins, :admin_id

    add_index :tags_films, :tag_id
    add_index :tags_films, :film_id

    add_index :tags_reviews, :tag_id
    add_index :tags_reviews, :review_id

    add_index :tags_mini_reviews, :tag_id
    add_index :tags_mini_reviews, :mini_review_id

    add_index :tags_articles, :tag_id
    add_index :tags_articles, :article_id

    add_index :tags_mini_articles, :tag_id
    add_index :tags_mini_articles, :mini_article_id

    add_index :themes_films, :theme_id
    add_index :themes_films, :film_id

  end
end
