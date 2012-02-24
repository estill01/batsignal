class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :agendas

  attr_accessible :name, :email

  validates :username, :uniqueness => true
  validates :password, :length => {:minimum => 4}

end
