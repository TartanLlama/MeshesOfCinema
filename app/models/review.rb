# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  content    :text
#

class Review < ActiveRecord::Base
  attr_accessible :rating, :content
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  acts_as_taggable
end
