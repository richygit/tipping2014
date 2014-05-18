class User < ActiveRecord::Base
  has_many :tips
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :recoverable

  after_create :init_tips
  
  def init_tips
    Match.all.each do |m|
      tip = Tip.new({user: self, match: m}, without_protection: true)
      tip.save!
    end
  end
end
