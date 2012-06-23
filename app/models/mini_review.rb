class MiniReview < ActiveRecord::Base
  attr_accessible :content
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  has_and_belongs_to_many :tags
end
