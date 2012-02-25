class Ally < ActiveRecord::Base
  belongs_to :user
  belongs_to :agenda
  
  attr_accessible :user_id, :agenda_id
end
