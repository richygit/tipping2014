class Result < ActiveRecord::Base
  has_many :tips, through: :matches
  belongs_to :match
end
