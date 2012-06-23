class Theme < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films
  has_and_belongs_to_many :mini_articles
end
