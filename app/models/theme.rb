# == Schema Information
#
# Table name: themes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theme < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films
  has_and_belongs_to_many :mini_articles
end
