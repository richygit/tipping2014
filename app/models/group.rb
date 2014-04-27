class Group < ActiveRecord::Base
  has_many :teams

  attr_accessible :id, :name

end
