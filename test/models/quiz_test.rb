# == Schema Information
#
# Table name: quizzes
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  title           :string
#  description     :text
#  high_score      :integer
#  high_score_user :string
#  image           :string
#
require "test_helper"

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
