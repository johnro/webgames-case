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
class Score < ApplicationRecord
  belongs_to :quiz

  # TODO: add validation such that the player name is at least 1 character long
  # TODO: add validation such that points is a whole integer number
end
