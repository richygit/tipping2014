class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :match
      t.integer :team1_score
      t.integer :team2_score
    end
  end
end
