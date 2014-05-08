class TipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tips = Tip.with_teams_venues_results_tips(current_user)
  end
  
  def update
    @tip = Tip.find(params[:id])
    tip_team = params[:tip][:tip].to_i
    if tip_team == Tip::DRAW
      @tip.tip = Tip::DRAW
    else
      @tip.tip = Team.find(tip_team).id
    end
    @tip.save!
  end
end
