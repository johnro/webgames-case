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
class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :scores, dependent: :destroy
end
