# == Schema Information
#
# Table name: elements
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Element < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :films
end
