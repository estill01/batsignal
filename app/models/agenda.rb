class Agenda < ActiveRecord::Base
  belongs_to :user
#  has_many :agents, :class => "User"

  attr_accessible :user_id, :name, :description, :private

  validate :name, :presence => true
  validate :user_id, :presence => true

end
