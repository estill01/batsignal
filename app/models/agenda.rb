class Agenda < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :scoped], :scope => :user

  acts_as_list
  acts_as_tree

  belongs_to :user

  attr_accessible :user_id, :name, :description, :private

  validate :name, :presence => true
  validate :user_id, :presence => true

  acts_as_audited
  has_associated_audits
end
