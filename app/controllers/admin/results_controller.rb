class Admin::ResultsController < ApplicationController
  load_and_authorize_resource

  def index
    @results = Result.includes(:match => [:first_team, :second_team])
  end

  def edit
    @teams = Team.all
  end

  def winner_team(params)
    first_team_score = params[:result][:first_team_score]
    second_team_score = params[:result][:second_team_score]
    return nil if first_team_score.nil? || second_team_score.nil?

    if first_team_score > second_team_score
      params[:result][:match_attributes][:team1_id]
    elsif second_team_score > first_team_score
      params[:result][:match_attributes][:team2_id]
    else
      nil
    end
  end
  private :winner_team

  def update
    result = Result.find(params[:id])
    match = result.match
    match.team1_id = params[:result][:match_attributes][:team1_id]
    match.team2_id = params[:result][:match_attributes][:team2_id]
    result.first_team_score = params[:result][:first_team_score]
    result.second_team_score = params[:result][:second_team_score]
    result.winner_team_id = winner_team(params)
    result.save!
    redirect_to admin_results_path
  end
end
