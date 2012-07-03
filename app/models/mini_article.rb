# == Schema Information
#
# Table name: mini_articles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MiniArticle < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  has_and_belongs_to_many :elements, limit: 1
  has_and_belongs_to_many :themes, limit: 1
  acts_as_taggable
end
