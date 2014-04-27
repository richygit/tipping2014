require 'spec_helper'

describe MatchesController do
  before(:each) do
    @user = create(:user)
    sign_in @user 
  end

  describe "#index" do
    before do
      load Rails.root + "db/seeds.rb" 
    end

    it 'should return all the matches' do
      get :index
      assigns(:matches).count.should == 64
    end
  end
end
