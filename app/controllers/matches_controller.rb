class MatchesController < ApplicationController
  before_action :authenticate_user!

  def index 
    @matches = Match.with_teams_venues_results_tips(current_user)
  end
end
