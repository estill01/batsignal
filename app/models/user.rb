class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :username, :uniqueness => true
  validates :password, :length => {:minimum => 4}

end
