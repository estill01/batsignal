class User < ActiveRecord::Base

  authenticates_with_sorcery!

  has_many :agendas

  attr_accessible :username, :email, :phone_number, :password
  attr_accessor :password

  validates :username, :uniqueness => true
  validates :username, :presence => true

  validates :phone_number, :presence => true

  validates :password, :presence => true
  validates :password, :length => {:minimum => 4}

  def over_18
    @user.age >= Time.now - 18.years
  end
end
