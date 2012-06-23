class Film < ActiveRecord::Base
  attr_accessible :name, :rating
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :elements
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :movements
  has_and_belongs_to_many :themes
  has_and_belongs_to_many :mini_reviews
  has_and_belongs_to_many :reviews
end
