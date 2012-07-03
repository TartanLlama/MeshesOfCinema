# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  content    :text
#

class Article < ActiveRecord::Base
  attr_accessible :name, :content
  has_and_belongs_to_many :films
  has_and_belongs_to_many :admins
  acts_as_taggable
end
