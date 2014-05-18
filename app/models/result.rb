class Result < ActiveRecord::Base
  has_many :tips, through: :matches
  has_one :winner, foreign_key: :winner_team_id, class_name: 'Team'
  belongs_to :match
  accepts_nested_attributes_for :match

end
