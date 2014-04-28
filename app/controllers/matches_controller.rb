class MatchesController < ApplicationController
  before_action :authenticate_user!

  def index 
    if current_user
      @matches = Match.with_teams_venues_results_tips(current_user)
    else
      @matches = Match.with_teams_venues_results
    end
  end
end
