class MatchesController < ApplicationController
  def index 
    @matches = Match.with_teams_and_venues
  end
end
