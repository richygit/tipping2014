class AddStageToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :stage, :string
  end
end
