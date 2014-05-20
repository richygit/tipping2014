require 'spec_helper'

describe TipsController do

  before :each do
    @user = create(:user)
    sign_in @user
  end

  it "should not allow user to update someone else's tips" do 
    another_user = create(:user, email: 'user@email.com')
    tip = create(:tip_with_associations, user: another_user)
    team = create(:team)
    expect {put :update, id: tip.id, team_id: team.id}.to raise_error
  end

  it "should not allow tips after 5 minutes before kickoff" do
    Timecop.freeze(Time.local(2014, 6, 1, 10, 0, 0)) do
      tip = create(:tip_with_associations, user: @user)
      tip.match.kickoff = Time.now
      tip.match.save!
      expect {put :update, id: tip.id}.to raise_error
    end
  end

  it "should record tips" do 
    match = create(:match, kickoff: Time.now + 1.week)
    create(:result_no_scores, match: match)
    tip = create(:tip_with_associations, user: @user, match: match)
    team = create(:team, name: 'new team', code: 'new')

    put :update, id: tip.id, tip: {team_id: team.id}, format: 'js'

    tip = Tip.find tip.id
    tip.team_id.should == team.id
  end
end
