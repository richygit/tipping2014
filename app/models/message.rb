class Message < ActiveRecord::Base
  scope :latest, -> { order('created_at DESC').limit(15) }
end
