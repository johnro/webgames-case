class RemoveLeaderboards < ActiveRecord::Migration[7.1]
  def change
    drop_table :leaderboards
  end
end
