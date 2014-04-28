class RenameResultScores < ActiveRecord::Migration
  def up
    change_table :results do |t|
      t.rename :team1_score, :first_team_score
      t.rename :team2_score, :second_team_score
    end
  end

  def down
    change_table :results do |t|
      t.rename :first_team_score, :team1_score
      t.rename :second_team_score, :team2_score
    end
  end
end
