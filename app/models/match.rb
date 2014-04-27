class Match < ActiveRecord::Base
  belongs_to :first_team, foreign_key: :team1_id, class_name: 'Team'
  belongs_to :second_team, foreign_key: :team2_id, class_name: 'Team'
  belongs_to :venue

  attr_accessible :id, :kickoff, :team1_id, :team2_id, :venue_id, :stage

  scope :with_teams_and_venues, -> { includes(:first_team).includes(:second_team).includes(:venue) }

end
