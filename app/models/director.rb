class Director < ActiveRecord::Base
  attr_accessible :bio, :dob, :dod, :name, :rating
  has_and_belongs_to_many :tags, :countries, :films
end
