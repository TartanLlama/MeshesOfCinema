# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120626202819) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.integer  "power"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "admins_articles", :id => false, :force => true do |t|
    t.integer "admin_id"
    t.integer "article_id"
  end

  add_index "admins_articles", ["admin_id"], :name => "index_admins_articles_on_admin_id"
  add_index "admins_articles", ["article_id"], :name => "index_admins_articles_on_article_id"

  create_table "admins_mini_articles", :id => false, :force => true do |t|
    t.integer "admin_id"
    t.integer "mini_article_id"
  end

  add_index "admins_mini_articles", ["admin_id"], :name => "index_admins_mini_articles_on_admin_id"
  add_index "admins_mini_articles", ["mini_article_id"], :name => "index_admins_mini_articles_on_mini_article_id"

  create_table "admins_mini_reviews", :id => false, :force => true do |t|
    t.integer "admin_id"
    t.integer "mini_review_id"
  end

  add_index "admins_mini_reviews", ["admin_id"], :name => "index_admins_mini_reviews_on_admin_id"
  add_index "admins_mini_reviews", ["mini_review_id"], :name => "index_admins_mini_reviews_on_mini_review_id"

  create_table "admins_reviews", :id => false, :force => true do |t|
    t.integer "admin_id"
    t.integer "review_id"
  end

  add_index "admins_reviews", ["admin_id"], :name => "index_admins_reviews_on_admin_id"
  add_index "admins_reviews", ["review_id"], :name => "index_admins_reviews_on_review_id"

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "content"
  end

  create_table "articles_films", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "film_id"
  end

  add_index "articles_films", ["article_id"], :name => "index_articles_films_on_article_id"
  add_index "articles_films", ["film_id"], :name => "index_articles_films_on_film_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries_films", :id => false, :force => true do |t|
    t.integer "country_id"
    t.integer "film_id"
  end

  add_index "countries_films", ["country_id"], :name => "index_countries_films_on_country_id"
  add_index "countries_films", ["film_id"], :name => "index_countries_films_on_film_id"

  create_table "directors", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.date     "dod"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "rating"
  end

  create_table "directors_countries", :id => false, :force => true do |t|
    t.integer "director_id"
    t.integer "country_id"
  end

  add_index "directors_countries", ["country_id"], :name => "index_directors_countries_on_country_id"
  add_index "directors_countries", ["director_id"], :name => "index_directors_countries_on_director_id"

  create_table "directors_films", :id => false, :force => true do |t|
    t.integer "director_id"
    t.integer "film_id"
  end

  add_index "directors_films", ["director_id"], :name => "index_directors_films_on_director_id"
  add_index "directors_films", ["film_id"], :name => "index_directors_films_on_film_id"

  create_table "directors_tags", :id => false, :force => true do |t|
    t.integer "director_id"
    t.integer "tag_id"
  end

  add_index "directors_tags", ["director_id"], :name => "index_directors_tags_on_director_id"
  add_index "directors_tags", ["tag_id"], :name => "index_directors_tags_on_tag_id"

  create_table "elements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "elements_films", :id => false, :force => true do |t|
    t.integer "element_id"
    t.integer "film_id"
  end

  add_index "elements_films", ["element_id"], :name => "index_elements_films_on_element_id"
  add_index "elements_films", ["film_id"], :name => "index_elements_films_on_film_id"

  create_table "films", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "year"
  end

  create_table "mini_articles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mini_articles_admins", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "admin_id"
  end

  add_index "mini_articles_admins", ["admin_id"], :name => "index_mini_articles_admins_on_admin_id"
  add_index "mini_articles_admins", ["mini_article_id"], :name => "index_mini_articles_admins_on_mini_article_id"

  create_table "mini_articles_elements", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "element_id"
  end

  add_index "mini_articles_elements", ["element_id"], :name => "index_mini_articles_elements_on_element_id"
  add_index "mini_articles_elements", ["mini_article_id"], :name => "index_mini_articles_elements_on_mini_article_id"

  create_table "mini_articles_films", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "film_id"
  end

  add_index "mini_articles_films", ["film_id"], :name => "index_mini_articles_films_on_film_id"
  add_index "mini_articles_films", ["mini_article_id"], :name => "index_mini_articles_films_on_mini_article_id"

  create_table "mini_articles_themes", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "theme_id"
  end

  add_index "mini_articles_themes", ["mini_article_id"], :name => "index_mini_articles_themes_on_mini_article_id"
  add_index "mini_articles_themes", ["theme_id"], :name => "index_mini_articles_themes_on_theme_id"

  create_table "mini_reviews", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "rating"
  end

  create_table "mini_reviews_admins", :id => false, :force => true do |t|
    t.integer "mini_review_id"
    t.integer "admin_id"
  end

  add_index "mini_reviews_admins", ["admin_id"], :name => "index_mini_reviews_admins_on_admin_id"
  add_index "mini_reviews_admins", ["mini_review_id"], :name => "index_mini_reviews_admins_on_mini_review_id"

  create_table "mini_reviews_films", :id => false, :force => true do |t|
    t.integer "mini_review_id"
    t.integer "film_id"
  end

  add_index "mini_reviews_films", ["film_id"], :name => "index_mini_reviews_films_on_film_id"
  add_index "mini_reviews_films", ["mini_review_id"], :name => "index_mini_reviews_films_on_mini_review_id"

  create_table "reviews", :force => true do |t|
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "content"
  end

  create_table "reviews_admins", :id => false, :force => true do |t|
    t.integer "review_id"
    t.integer "admin_id"
  end

  add_index "reviews_admins", ["admin_id"], :name => "index_reviews_admins_on_admin_id"
  add_index "reviews_admins", ["review_id"], :name => "index_reviews_admins_on_review_id"

  create_table "reviews_films", :id => false, :force => true do |t|
    t.integer "review_id"
    t.integer "film_id"
  end

  add_index "reviews_films", ["film_id"], :name => "index_reviews_films_on_film_id"
  add_index "reviews_films", ["review_id"], :name => "index_reviews_films_on_review_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags_articles", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "article_id"
  end

  add_index "tags_articles", ["article_id"], :name => "index_tags_articles_on_article_id"
  add_index "tags_articles", ["tag_id"], :name => "index_tags_articles_on_tag_id"

  create_table "tags_films", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "film_id"
  end

  add_index "tags_films", ["film_id"], :name => "index_tags_films_on_film_id"
  add_index "tags_films", ["tag_id"], :name => "index_tags_films_on_tag_id"

  create_table "tags_mini_articles", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "mini_article_id"
  end

  add_index "tags_mini_articles", ["mini_article_id"], :name => "index_tags_mini_articles_on_mini_article_id"
  add_index "tags_mini_articles", ["tag_id"], :name => "index_tags_mini_articles_on_tag_id"

  create_table "tags_mini_reviews", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "mini_review_id"
  end

  add_index "tags_mini_reviews", ["mini_review_id"], :name => "index_tags_mini_reviews_on_mini_review_id"
  add_index "tags_mini_reviews", ["tag_id"], :name => "index_tags_mini_reviews_on_tag_id"

  create_table "tags_reviews", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "review_id"
  end

  add_index "tags_reviews", ["review_id"], :name => "index_tags_reviews_on_review_id"
  add_index "tags_reviews", ["tag_id"], :name => "index_tags_reviews_on_tag_id"

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "themes_films", :id => false, :force => true do |t|
    t.integer "theme_id"
    t.integer "film_id"
  end

  add_index "themes_films", ["film_id"], :name => "index_themes_films_on_film_id"
  add_index "themes_films", ["theme_id"], :name => "index_themes_films_on_theme_id"

end
