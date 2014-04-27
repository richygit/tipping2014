class CreateMatchesAndVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string  :city
      t.string  :name
    end

    create_table :matches do |t|
      t.datetime  :kickoff
      t.string :location
      t.integer :team1
      t.integer :team2
      t.references :venue
      t.timestamps
    end
  end
end
