class TipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tips = Tip.with_teams_venues_results_tips(current_user)
  end
  
  def update
    @tip = Tip.find(params[:id])
    raise 'Bad tip' unless @tip.user.id == current_user.id
    raise 'Too late to tip' if Time.now >= (@tip.match.kickoff - 5.minutes) || @tip.result.first_team_score || @tip.result.second_team_score || @tip.result.winner_team_id
    tip_team = params[:tip][:team_id].to_i
    if tip_team == Tip::DRAW
      @tip.team_id = Tip::DRAW
    else
      @tip.team_id = Team.find(tip_team).id
    end
    @tip.save!
  end
end
