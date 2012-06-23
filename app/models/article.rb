class Article < ActiveRecord::Base
  attr_accessible :name, :content
  has_and_belongs_to_many :films
  has_and_belongs_to_many :admins
  has_and_belongs_to_many :tags
end
