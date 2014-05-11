class LeaderboardController < ApplicationController
  before_action :authenticate_user!

  def index 
    sql = <<-SQL
      SELECT u.id, u.name, COUNT(t.team_id) AS correct FROM users u
      JOIN tips t ON u.id = t.user_id
      LEFT JOIN results r ON r.match_id = t.match_id AND t.team_id = r.winner_team_id
      GROUP BY u.id
      ORDER BY correct DESC
    SQL
    @leaders = ActiveRecord::Base.connection.execute(sql)
  end
end
