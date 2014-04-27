class CreateTeamsAndGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string  :name
    end

    create_table :teams do |t|
      t.string      :name
      t.string      :code
      t.references  :group
      t.timestamps
    end
  end
end
