class Agenda < ActiveRecord::Base
  acts_as_list

  belongs_to :user

  attr_accessible :user_id, :name, :description, :private

  validate :name, :presence => true
  validate :user_id, :presence => true

end
