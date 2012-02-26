class Agent < ActiveRecord::Base
  belongs_to :user 
  belongs_to :agenda

  attr_accessible :user_id

  validates :user_id, :presence => true
  validates :agent_id, :presence => true
end
