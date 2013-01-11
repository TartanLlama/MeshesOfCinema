# == Schema Information
#
# Table name: mini_reviews
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rating     :integer
#

class MiniReview < ActiveRecord::Base 
  attr_accessible :content, :rating, :film_ids, :tag_list, :admins
  validates :rating, numericality: {greater_than: 0, less_than: 5}, presence: true
  has_and_belongs_to_many :films, limit: 1
  has_and_belongs_to_many :admins, limit: 1
  acts_as_taggable_on :tags
  accepts_nested_attributes_for :films
  validates_presence_of :content, :films, :tag_list
end
