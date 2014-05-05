class ChangeTipColumn < ActiveRecord::Migration
  def up
    change_column :tips, :tip, :integer
  end

  def down
    change_column :tips, :tip, :string
  end
end
