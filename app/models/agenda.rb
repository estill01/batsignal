class Agenda < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :name, :private

  validate :name, :presence => true

end
