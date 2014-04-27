class MatchesController < ApplicationController
  before_action :authenticate_user!

  def index 
    @matches = Match.with_teams_and_venues
  end
end
