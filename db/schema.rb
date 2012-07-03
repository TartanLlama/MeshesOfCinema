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

ActiveRecord::Schema.define(:version => 20120702215026) do

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

  add_index "admins_articles", ["admin_id", "article_id"], :name => "index_admins_articles_on_admin_id_and_article_id"

  create_table "admins_mini_articles", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "admin_id"
  end

  add_index "admins_mini_articles", ["mini_article_id", "admin_id"], :name => "index_admins_mini_articles_on_mini_article_id_and_admin_id"

  create_table "admins_mini_reviews", :id => false, :force => true do |t|
    t.integer "mini_review_id"
    t.integer "admin_id"
  end

  add_index "admins_mini_reviews", ["mini_review_id", "admin_id"], :name => "index_admins_mini_reviews_on_mini_review_id_and_admin_id"

  create_table "admins_reviews", :id => false, :force => true do |t|
    t.integer "review_id"
    t.integer "admin_id"
  end

  add_index "admins_reviews", ["review_id", "admin_id"], :name => "index_admins_reviews_on_review_id_and_admin_id"

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "articles_films", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "film_id"
  end

  add_index "articles_films", ["article_id", "film_id"], :name => "index_articles_films_on_article_id_and_film_id"

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "countries", :id => false, :force => true do |t|
    t.string "country_id"
  end

  create_table "countries_directors", :id => false, :force => true do |t|
    t.integer "director_id"
    t.string  "country_id"
  end

  add_index "countries_directors", ["director_id", "country_id"], :name => "index_countries_directors_on_director_id_and_country_id"

  create_table "countries_films", :id => false, :force => true do |t|
    t.string  "country_id"
    t.integer "film_id"
  end

  add_index "countries_films", ["country_id", "film_id"], :name => "index_countries_films_on_country_id_and_film_id"

  create_table "directors", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.date     "dod"
    t.text     "bio"
    t.string   "imdb_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "directors", ["imdb_id"], :name => "index_directors_on_imdb_id", :unique => true

  create_table "directors_films", :id => false, :force => true do |t|
    t.integer "director_id"
    t.integer "film_id"
  end

  add_index "directors_films", ["director_id", "film_id"], :name => "index_directors_films_on_director_id_and_film_id"

  create_table "elements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "elements_films", :id => false, :force => true do |t|
    t.integer "element_id"
    t.integer "film_id"
  end

  add_index "elements_films", ["element_id", "film_id"], :name => "index_elements_films_on_element_id_and_film_id"

  create_table "elements_mini_articles", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "element_id"
  end

  add_index "elements_mini_articles", ["mini_article_id", "element_id"], :name => "index_elements_mini_articles_on_mini_article_id_and_element_id"

  create_table "films", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "imdb_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "films", ["imdb_id"], :name => "index_films_on_imdb_id", :unique => true

  create_table "films_mini_articles", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "film_id"
  end

  add_index "films_mini_articles", ["mini_article_id", "film_id"], :name => "index_films_mini_articles_on_mini_article_id_and_film_id"

  create_table "films_mini_reviews", :id => false, :force => true do |t|
    t.integer "mini_review_id"
    t.integer "film_id"
  end

  add_index "films_mini_reviews", ["mini_review_id", "film_id"], :name => "index_films_mini_reviews_on_mini_review_id_and_film_id"

  create_table "films_reviews", :id => false, :force => true do |t|
    t.integer "review_id"
    t.integer "film_id"
  end

  add_index "films_reviews", ["review_id", "film_id"], :name => "index_films_reviews_on_review_id_and_film_id"

  create_table "films_themes", :id => false, :force => true do |t|
    t.integer "theme_id"
    t.integer "film_id"
  end

  add_index "films_themes", ["theme_id", "film_id"], :name => "index_films_themes_on_theme_id_and_film_id"

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mini_articles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mini_articles_themes", :id => false, :force => true do |t|
    t.integer "mini_article_id"
    t.integer "theme_id"
  end

  add_index "mini_articles_themes", ["mini_article_id", "theme_id"], :name => "index_mini_articles_themes_on_mini_article_id_and_theme_id"

  create_table "mini_reviews", :force => true do |t|
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "rating"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
