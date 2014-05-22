require 'spec_helper'

describe TipsHelper do
  describe "#can_tip?" do
    it "should return false if both teams have not been decided" do
      @match = create(:match, first_team: nil, second_team: nil, kickoff: 1.week.since)
      @result = create(:result, match: @match, first_team_score: nil, second_team_score: nil, winner_team_id: nil)
      helper.can_tip?(@match).should == false

      first_team = create(:team)
      @match.first_team = first_team
      helper.can_tip?(@match).should == false

      second_team = create(:another_team)
      @match.second_team = second_team
      @match.first_team = nil
      helper.can_tip?(@match).should == false
    end

    it "should return false when a score or winner has been determined" do
      @match = create(:match, kickoff: 1.week.since)
      @result = create(:result, match: @match, first_team_score: 1, second_team_score: 2, winner_team_id: @match.first_team.id)
      helper.can_tip?(@match).should == false
    end

    it "should return false when the match has already started" do
      @match = create(:match, kickoff: 1.week.ago)
      @result = create(:result, match: @match)
      helper.can_tip?(@match).should == false
    end

    it "should return true if teams are present, no result logged and match has not started" do
      @match = create(:match, kickoff: 1.week.since)
      @result = create(:result, match: @match, first_team_score: nil, second_team_score: nil, winner_team_id: nil)
      helper.can_tip?(@match).should == true
    end
  end
end
