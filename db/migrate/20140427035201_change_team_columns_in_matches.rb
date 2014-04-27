class ChangeTeamColumnsInMatches < ActiveRecord::Migration
  def up
    change_table :matches do |t|
      t.rename :team1, :team1_id
      t.rename :team2, :team2_id
      t.remove :location
    end
  end

  def down
    change_table :matches do |t|
      t.rename :team1_id, :team1
      t.rename :team2_id, :team2
    end
  end
end
