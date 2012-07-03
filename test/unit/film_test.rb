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

require 'test_helper'

class FilmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
