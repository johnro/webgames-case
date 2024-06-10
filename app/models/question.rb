# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :string
#  answer     :boolean
#  quiz_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
  belongs_to :quiz
end
