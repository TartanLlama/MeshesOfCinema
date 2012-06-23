class Admin < ActiveRecord::Base
  attr_accessible :bio, :name, :privilege
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :mini_articles
  has_and_belongs_to_many :reviews
  has_and_belongs_to_many :mini_reviews
end
