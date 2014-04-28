class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.references :user
      t.references :match
      t.string  :tip
      t.timestamps
    end
  end
end
