class Team < ActiveRecord::Base
  has_many :matches
  attr_accessible :id, :name, :code, :group_id
end
