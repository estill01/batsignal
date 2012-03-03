class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :agendas
  acts_as_follower
  acts_as_followable

  attr_accessible :username, :email, :phone_number, :password, :avatar, :avatar_cache
  attr_accessor :password

  validates :username, :uniqueness => true
  validates :username, :length => {:minimum => 1}
#  validates :phone_number, :presence => true
#  validates :password, :presence => true
  validates :password, :length => {:minimum => 4}

  # enable semantic urls (i.e., users/estill01 vs. users/6)
  extend FriendlyId
  friendly_id :username, use: [:slugged, :history]
 
  # enable carrierwave image uploader 
  mount_uploader :avatar, AvatarUploader

  acts_as_audited
  acts_as_audited :associated_with => :agenda

end
