module LeaderboardHelper
  def calculate_rank(previous_score, score, previous_rank)
    return 1 if previous_score.nil?
    if score < previous_score
      previous_rank + 1
    else
      previous_rank
    end
  end

  def leaderboard_class(row)
    row[0] == current_user.id ? 'current-user' : ''
  end
end
