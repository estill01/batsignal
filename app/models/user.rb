class User < ActiveRecord::Base
  authenticates_with_sorcery!

  extend FriendlyId
  friendly_id :username, use: [:slugged, :history]

  acts_as_follower
  acts_as_followable

  has_many :agendas
#  has_many :agents, :class => "User"
#  has_many :agents, :through => :agendas

  attr_accessible :username, :email, :phone_number, :password
  attr_accessor :password

  validates :username, :uniqueness => true
  validates :username, :presence => true
  validates :phone_number, :presence => true
  validates :password, :presence => true
  validates :password, :length => {:minimum => 4}

end
