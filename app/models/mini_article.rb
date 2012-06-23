class MiniArticle < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  has_and_belongs_to_many :elements, limit: 1
  has_and_belongs_to_many :themes, limit: 1
  has_and_belongs_to_many :tags
end
