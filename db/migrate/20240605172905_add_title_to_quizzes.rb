class AddTitleToQuizzes < ActiveRecord::Migration[7.1]
  def change
    add_column :quizzes, :title, :string
    add_column :quizzes, :description, :text
    add_column :quizzes, :high_score, :integer
    add_column :quizzes, :high_score_user, :string
  end
end
