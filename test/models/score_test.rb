# == Schema Information
#
# Table name: scores
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  points     :integer
#  player     :string
#  quiz_id    :integer          not null
#
require "test_helper"

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
