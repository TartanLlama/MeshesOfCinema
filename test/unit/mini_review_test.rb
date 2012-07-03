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

require 'test_helper'

class MiniReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
