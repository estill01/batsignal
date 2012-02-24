class Agenda < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :name, :description, :private

  validate :name, :presence => true
end
