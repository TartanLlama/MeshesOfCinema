class Review < ActiveRecord::Base
  attr_accessible :rating, :content
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  has_and_belongs_to_many :tags
end
