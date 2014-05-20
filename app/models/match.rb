class Match < ActiveRecord::Base
  belongs_to :first_team, foreign_key: :team1_id, class_name: 'Team'
  belongs_to :second_team, foreign_key: :team2_id, class_name: 'Team'
  belongs_to :venue
  has_one :result

  scope :with_teams_venues_results, -> { includes(:first_team).includes(:second_team).includes(:venue).includes(:result) }
  scope :with_teams_venues_results_tips, ->(user) {includes(:first_team).includes(:second_team).joins(:venue)
                                                   .joins('LEFT OUTER JOIN results ON matches.id = results.match_id')
                                                   .joins('LEFT OUTER JOIN tips ON matches.id = tips.match_id AND tips.user_id = ' + Match.sanitize(user.id)) }

  def not_started?
    Time.now < (kickoff - 5.minutes)
  end

  def is_knockout?
    self.stage != 'G'
  end
end
