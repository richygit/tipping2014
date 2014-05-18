class Admin::ResultsController < ApplicationController
  load_and_authorize_resource

  def index
    @results = Result.includes(:match => [:first_team, :second_team])
  end

  def edit
    @teams = Team.all
  end

  def update
    result = Result.find(params[:id])
    match = result.match
    match.team1_id = params[:result][:match_attributes][:team1_id]
    match.team2_id = params[:result][:match_attributes][:team2_id]
    result.first_team_score = params[:result][:first_team_score]
    result.second_team_score = params[:result][:second_team_score]
    result.save!
    redirect_to admin_results_path
  end
end
