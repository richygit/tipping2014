class MatchesController < ApplicationController
  def index 
    @matches = Match.with_teams
  end
end
