require 'spec_helper'

describe Admin::ResultsController do
  before :each do
    @user = create(:user, is_admin: true)
    sign_in @user
  end

  describe "#update" do
    it "should update the winner and scores" do
      match = create(:match)
      second_team = match.second_team
      result = create(:result, match: match, winner_team_id: nil)
      params = {id: result.id, result: {match_attributes: {team1_id: match.first_team.id, team2_id: match.second_team.id}, first_team_score: 0, second_team_score: 2 }}
      patch :update, params

      result = Result.find result.id
      result.first_team_score.should == 0
      result.second_team_score.should == 2
      result.winner_team_id.should == second_team.id
    end
    
    it "should set winner to 'draw' when scores are even" do
      match = create(:match)
      second_team = match.second_team
      result = create(:result, match: match, winner_team_id: nil)
      params = {id: result.id, result: {match_attributes: {team1_id: match.first_team.id, team2_id: match.second_team.id}, first_team_score: 0, second_team_score: 0 }}
      patch :update, params

      result = Result.find result.id
      result.first_team_score.should == 0
      result.second_team_score.should == 0
      result.winner_team_id.should == Tip::DRAW
    end

    it "should set the teams for the match" do 
      match = create(:match, first_team: nil, second_team: nil)
      first_team = create(:team)
      second_team = create(:another_team)
      result = create(:result, match: match, winner_team_id: nil)
      params = {id: result.id, result: {match_attributes: {team1_id: first_team.id, team2_id: second_team.id} }}
      patch :update, params

      result = Result.find result.id
      match = Match.find match.id
      match.first_team.should == first_team
      match.second_team.should == second_team
      result.winner_team_id.should be_nil
    end
  end

end
