class ChangeTipTipToTeamId < ActiveRecord::Migration
  def up
    rename_column :tips, :tip, :team_id
    change_column :tips, :team_id, :integer
  end

  def down
    rename_column :tips, :team_id, :tip
    change_column :tips, :tip, :string
  end
end
