class TipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tips = Tip.with_teams_venues_results_tips(current_user)
  end
end
