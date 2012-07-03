# == Schema Information
#
# Table name: films
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :integer
#  imdb_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Film < ActiveRecord::Base
  attr_accessible :name, :year, :imdb_id, :director_ids
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :elements
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :movements
  has_and_belongs_to_many :themes
  has_and_belongs_to_many :mini_reviews
  has_and_belongs_to_many :reviews
  acts_as_taggable_on :tags

  #searchable do
  #  text :name
  #end
end
