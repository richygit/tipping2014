class TipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tips = Tip.with_teams_venues_results_tips(current_user)
  end
  
  def update
    @tip = Tip.find(params[:id])
    raise 'Too late to tip' unless Time.now < (@tip.match.kickoff - 5.minutes)
    tip_team = params[:tip][:team_id].to_i
    if tip_team == Tip::DRAW
      @tip.team_id = Tip::DRAW
    else
      @tip.team_id = Team.find(tip_team).id
    end
    @tip.save!
  end
end
