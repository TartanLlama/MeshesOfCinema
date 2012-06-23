class Tag < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :mini_articles
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :mini_reviews
  has_and_belongs_to_many :reviews
end
