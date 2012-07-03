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

require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
