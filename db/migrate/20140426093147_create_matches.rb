class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime  :kickoff
      t.string :location
      t.timestamps
    end

    create_table :matches_teams do |t|
      t.integer :match_id
      t.integer :team_id
    end
  end
end
