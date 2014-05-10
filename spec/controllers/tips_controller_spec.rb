require 'spec_helper'

describe TipsController do

  before :each do
    @user = create(:user)
    sign_in @user
  end

  it "should not allow tips after 5 minutes before kickoff" do
    Timecop.freeze(Time.local(2014, 6, 1, 10, 0, 0)) do
      tip = create(:tip_with_associations, user: @user)
      tip.match.kickoff = Time.now
      tip.match.save!
      expect {put :update, id: tip.id}.to raise_error
    end
  end
end
