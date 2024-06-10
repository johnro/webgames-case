class AddPointsToScore < ActiveRecord::Migration[7.1]
  def change
    add_column :scores, :points, :integer
    add_column :scores, :player, :string
    add_reference :scores, :quiz, null: false, foreign_key: true
  end
end
