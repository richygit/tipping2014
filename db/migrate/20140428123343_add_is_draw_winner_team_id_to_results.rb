class AddIsDrawWinnerTeamIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :is_draw, :boolean
    add_column :results, :winner_team_id, :integer
  end
end
