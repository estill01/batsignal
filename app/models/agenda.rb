class Agenda < ActiveRecord::Base
  attr_accessible :user_id, :name, :description, :private

  belongs_to :user
  has_many :allies


  validate :name, :presence => true
end
