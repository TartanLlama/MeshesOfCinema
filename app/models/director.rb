class Director < ActiveRecord::Base
  attr_accessible :bio, :dob, :dod, :name, :rating
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :films
end
