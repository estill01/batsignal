class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :agendas
  has_many :allies
  has_many :allies, :through => :agendas

  attr_accessible :username, :email, :phone_number, :password
  attr_accessor :password

  validates :username, :uniqueness => true
  validates :username, :presence => true
  validates :phone_number, :presence => true
  validates :password, :presence => true
  validates :password, :length => {:minimum => 4}

end
