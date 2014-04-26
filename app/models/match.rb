class Match < ActiveRecord::Base
  has_and_belongs_to_many :teams
  attr_accessible :location, :kickoff

  scope :with_teams, -> { includes(:teams).order('matches.kickoff asc, teams.name asc') }
end
