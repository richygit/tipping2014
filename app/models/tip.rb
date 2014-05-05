class Tip < ActiveRecord::Base
  belongs_to :user
  belongs_to :match, -> { includes :venue, :first_team, :second_team, :result}
  has_one :venue, through: :match
  has_one :result, through: :match
  validates :user_id, uniqueness: { scope: :match_id }

  DRAW = -1

  scope :with_teams_venues_results_tips, ->(user) { joins(:match).includes([:venue, :result]) }
end
