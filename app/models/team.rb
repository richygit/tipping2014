class Team < ActiveRecord::Base
  has_and_belongs_to_many :matches
  attr_accessible :name
end
