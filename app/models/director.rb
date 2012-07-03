# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dob        :date
#  dod        :date
#  bio        :text
#  imdb_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Director < ActiveRecord::Base
  attr_accessible :bio, :dob, :dod, :name, :imdb_id, :countries, :films, :tag_list, :film_ids, :country_ids
  acts_as_taggable_on :tags
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :films
end
