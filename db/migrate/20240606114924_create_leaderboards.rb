class CreateLeaderboards < ActiveRecord::Migration[7.1]
  def change
    create_table :leaderboards do |t|
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
