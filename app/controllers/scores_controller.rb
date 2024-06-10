class ScoresController < ApplicationController
  before_action :set_quiz
  skip_before_action :verify_authenticity_token

  # def create
  # TODO : Handle POST request to create a new score
  # end

  private

  def set_quiz
    # TODO : Set the @quiz instance variable
  end

  def score_params
    # TODO : Define and permit the score parameters
  end
end
