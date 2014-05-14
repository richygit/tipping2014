class RemoveIsDrawColumnFromResults < ActiveRecord::Migration
  def up
    remove_column :results, :is_draw
  end

  def down
    add_column :results, :is_draw, :boolean
  end
end
