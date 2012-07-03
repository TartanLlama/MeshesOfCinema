# == Schema Information
#
# Table name: countries
#
#  code :integer          not null, primary key
#

class Country < ActiveRecord::Base
  set_primary_key :country_id

  attr_accessible :country_id
  has_and_belongs_to_many :films
  has_and_belongs_to_many :directors
end
